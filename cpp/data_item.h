#ifndef DATA_ITEM_H
#define DATA_ITEM_H

#include <QObject>
#include <QString>

namespace app {


    class DataItem : public QObject {
        Q_OBJECT
        Q_PROPERTY( int id READ id WRITE setId NOTIFY changed )
        Q_PROPERTY(QString nameIngridient READ nameIngr WRITE setNameIngr NOTIFY changed)
        Q_PROPERTY(int weightIngridient READ weightIngr WRITE setWeightIngr NOTIFY changed)
        Q_PROPERTY(double priceIngridient READ priceIngr WRITE setPriceIngr NOTIFY changed)
        Q_PROPERTY(double totalPrice READ totalPrice WRITE setTotalPrice NOTIFY totalPriceChanged)
    public:
        explicit DataItem(int id = 0, QString name = "", int weight = 0, double price = 0, double total = 0);


        //Q_INVOKABLE void deleteItem();

        QString nameIngr() const;
        void setNameIngr(const QString &nameIngr);

        int weightIngr() const;
        void setWeightIngr(int weightIngr);

        double priceIngr() const;
        void setPriceIngr(double priceIngr);

        double totalPrice() const;
        void setTotalPrice(double totalPrice);

        int id() const;
        void setId(int id);

    signals:
        void changed();
        void totalPriceChanged();

    private:
        int m_id;
        QString m_nameIngr;
        int m_weightIngr;
        double m_priceIngr;
        double m_totalPrice;
    };

}
#endif // DATA_ITEM_H
