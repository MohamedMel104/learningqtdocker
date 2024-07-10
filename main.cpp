#include <QCoreApplication>
#include <iostream>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    std::cout<<"hello world from QT CLI on docker Hosted on GoogleCloud"<<std::endl;
    return a.exec();
}
