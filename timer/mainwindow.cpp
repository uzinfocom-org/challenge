#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QProcess>
#include <QSettings>

int counter = 10;

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    timer = new QTimer;
    connect(timer, &QTimer::timeout, this, [this] {clock(); });
    connect(ui->btnStart, &QPushButton::clicked, this, [this] { startCounter(); });
    connect(ui->btnStop, &QPushButton::clicked, this, [this] { stopCounter(); });

    QSettings settings("QTimer");
    counter = settings.value("timer", 60).toInt();
    ui->label->setText(settings.value("timer", 60).toString());
    ui->edCounter->setValue(counter);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::clock()
{
    if (counter > 0) {
        ui->label->setText(QString::number(counter));
        counter--;
    } else {
        lockScreen();
    }
}

void MainWindow::lockScreen()
{
    stopCounter();
    QProcess process;
    process.start("cinnamon-screensaver-command", QStringList() << "--lock");
    process.waitForFinished();
}

void MainWindow::startCounter()
{
    counter = ui->edCounter->value();
    timer->setInterval(1000);
    timer->start();
    QSettings settings("QTimer");
    settings.setValue("timer", counter);
}

void MainWindow::stopCounter()
{
    timer->stop();
    counter = ui->edCounter->value();
}

