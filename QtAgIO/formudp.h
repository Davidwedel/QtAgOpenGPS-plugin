#include "formloop.h"

class FormUDP : public QObject
{

	Q_OBJECT
	public:
    explicit FormUDP(QObject *parent = nullptr);
        ~FormUDP();

//used to send communication check pgn= C8 or 200
//QByteArray sendIPToModules = { 0x80, 0x81, 0x7F, 201, 5, 201, 201, 192, 168, 5, 0x47 };
        QByteArray sendIPToModules;

//QByteArray ipCurrent = { 192, 168, 5 };
//QByteArray ipNew = { 192, 168, 5 };
        QByteArray ipCurrent;
        QByteArray ipNew;
        QSettings settings;

        void SetFormLoop(FormLoop *formLoop);
void FormUDp_Load();
/*void timer1_Tick(FormLoop &mf);
void ScanNetwork(FormLoop &mf);
void btnSendSubnet_Click(FormLoop &mf);
void btnAutoSet_Click(FormLoop &mf);*/

void timer1_Tick();
void ScanNetwork();
void btnSendSubnet_Click();
void btnAutoSet_Click();

void nudFirstIP_Click();

private:
FormLoop *mf;
};
