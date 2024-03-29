<style>
    div {
        font-size: 11px;
    }

    table {
        font-size: 11px
    }
</style>
<div>
    <br><br><br><br><br><br>
</div>
<table>
    <tr>
        <td style="width: 50%" align="center">
            <strong>
                ОБЩЕСТВО С ОГРАНИЧЕННОЙ ОТВЕТСТВЕННОСТЬЮ
                <br>МИКРОКРЕДИТНАЯ КОМПАНИЯ
                <br>«БАРЕНЦ ФИНАНС»
            </strong>
            <br>ИНН 9723120835 КПП 290101001
            <br>ОГРН 1217700350812
            <br>163045, г. Архангельск, пр-д К.С. Бадигина, д. 19, оф. 107
            <br>Конт. телефон 8 (800) 101-82-83
        </td>
        <td>
            ФИО: {$lastname} {$firstname}{$patronymic}<br> 
            Адрес: {$faktaddress_full}<br> 
        </td>
    </tr>
    <tr>
        <td>

        </td>
    </tr>
    
</table>
<div>

</div>
<div>

</div>

<table>
    <tr>
        <td align="center">
             <strong>УВЕДОМЛЕНИЕ 
            <br>О праве заемщика отказаться от дополнительных услуг (работ, товаров) </strong>

        </td>
    </tr>
</table>

<div>

</div>
<div>

</div>

<div align="justify">
{$contract->inssuance_date|date} между Вами и ООО МКК «Баренц Финанс» был заключен Договор потребительского кредита (займа) № {$contract->number}, а также  получено согласие на предоставление дополнительных услуг (работ, товара).
<br>Уведомляем о том, что Вы вправе отказаться от предоставленных дополнительных услуг (товаров, работ) в течение тридцати календарных дней со дня выражения согласия на их оказание посредством обращения к лицу, оказывающему такие услуги (выполняющему работы, реализующему товары), с заявлением об отказе от таких услуг (работ, товаров).
<br>В случае отказа от дополнительных услуг (работ, товаров) Вы вправе требовать от лица, оказывающего дополнительные услуги (работы, товары), возврата денежных средств, уплаченных за оказание таких услуг (выполняющему работы, реализующему товары), за вычетом стоимости части таких услуг, фактически оказанных до дня получения лицом, оказывающим такие услуги (выполняющему работы, реализующему товары), заявления об отказе от таких услуг (работ, товаров).
<br>Вы также имеете право требовать от ООО МКК «Баренц Финанс» возврата денежных средств, уплаченных третьему лицу за оказание дополнительных услуг (выполнение работы, реализации товара), за вычетом стоимости части таких услуг (работ, товаров), фактически оказанных мне до дня получения третьим лицом заявления об отказе от таких услуг (работ, товаров), при неисполнении таким третьим лицом обязанности по возврату денежных средств.
<br>Перечень дополнительных услуг (работ, товаров), на оказание (выполнение, реализацию) которых получено согласие:

</div>

<div>
</div>

<div>

</div>

<table border="1px">
    <tr>
        <td style="width: 34%">
            Вид услуги
(работы, товара)
        </td>
        <td style="width: 34%">
            Предельная дата для отказа от услуги (работы, товара)
        </td>
        <td>
            Наименование лица, предоставляющее услугу (работу, товар)
        </td>
    </tr>
    <tr>
        <td style="width: 34%">
           договор страхования на условиях Правил № 195 комбинированного страхования от несчастных случаев и болезней
        </td>
        <td style="width: 34%">
            {$limit_date}
        </td>
        <td>
            САО «ВСК»
        </td>
    </tr>
</table>

<div align="justify">
    
</div>

<div align="justify">
    <strong>Обращаем ваше внимание!</strong> Отказ от дополнительных услуг (работ, товаров) не повлияет на условия договора потребительского кредита (займа) 
</div>

<div align="right">

</div>

<div align="right">
    Дата направления: {$contract->inssuance_date|date}
</div>

<div align="right">

</div>
<div align="right">

</div>

<table style="width: 100%">
    <tr>
        <td><strong>Генеральный директор</strong></td>
        <td><img src="{$config->root_dir}/theme/site/html/pdf/i/bfSigna.png"></td>
        <td><img src="{$config->root_dir}/theme/site/html/pdf/i/bfStamp.png"></td>
        <td>Кройтор В.В</td>
    </tr>
    <tr>
        
    </tr>
</table>