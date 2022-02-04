#include "data_item.h"

namespace app {

    DataItem::DataItem(int id, QString name, int weight, double price, double total)
        :QObject(nullptr)
        ,m_id(id)
        ,m_nameIngr(name)
        ,m_weightIngr(weight)
        ,m_priceIngr(price)
        ,m_totalPrice(total){
    }

    QString DataItem::nameIngr() const
    {
        return m_nameIngr;
    }

    void DataItem::setNameIngr(const QString &nameIngr)
    {
        m_nameIngr = nameIngr;
    }

    int DataItem::weightIngr() const
    {
        return m_weightIngr;
    }

    void DataItem::setWeightIngr(int weightIngr)
    {
        m_weightIngr = weightIngr;
    }

    double DataItem::priceIngr() const
    {
        return m_priceIngr;
    }

    void DataItem::setPriceIngr(double priceIngr)
    {
        m_priceIngr = priceIngr;
    }

    double DataItem::totalPrice() const
    {
        return m_totalPrice;
    }

    void DataItem::setTotalPrice(double totalPrice)
    {
        m_totalPrice = totalPrice;
    }

    int DataItem::id() const
    {
        return m_id;
    }

    void DataItem::setId(int id)
    {
        m_id = id;
    }
}
