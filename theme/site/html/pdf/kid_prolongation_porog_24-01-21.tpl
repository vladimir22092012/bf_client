<style>
    div {
        font-size: 11px;
    }

    table {
        font-size: 11px
    }
</style>
<div>
    <br><br><br><br>
</div>
<table>
    <tr>
        <td style="width: 70%" align="center"><strong>Ключевой информационный документ<br>об условиях добровольного
                страхования</strong>
        </td>
        <td rowspan="3"><img src="{$config->root_dir}/theme/site/html/pdf/i/qr.png"></td>
    </tr>
    <tr>
        <td></td>
    </tr>
    <tr>
        <td align="center">подготовлен на основании Правил № 195 комбинированного страхования заемщиков кредитов от
            несчастных случаев
            и болезней САО «ВСК», утвержденных приказом генерального директора от 13.04.2022 г. № 00-99/207-ОД (далее –
            Правила страхования)
        </td>
    </tr>
</table>
<div>

</div>
<div align="justify"><strong>Страховщик: </strong>САО «ВСК», 121552, Москва, ул. Островная, 4, лицензия ЦБ РФ СЛ № 0621
    от 11.09.2015 г.
</div>
<div>

</div>
<table>
    <tr>
        <td align="center" colspan="2"><strong>Раздел I. ЧТО ЗАСТРАХОВАНО?</strong>
        </td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td><strong>Дополнительные страховые риски:</strong><br><br>1. Смерть Застрахованного в результате несчастного
            случая,
            происшедшего с Застрахованным в период страхования;<br>2. Установление Застрахованному инвалидности I или II
            группы в связи с причинением вреда здоровью Застрахованного вследствие несчастного случая, происшедшего с
            Застрахованным в период страхования.
        </td>
        <td>{if !empty($insurance_sum)}{$insurance_sum}{else}{$insurance}{/if} рублей – <strong>страховая премия за дополнительные страховые риски</strong></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2" align="center">По дополнительным страховым рискам выгодоприобретателем
            является {$firstname|mb_substr:0:1}.{$patronymic|mb_substr:0:1}.{$lastname}, а в случае его смерти – наследники
        </td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="center" colspan="2"><strong>Раздел II. ЧТО НЕ ЗАСТРАХОВАНО?</strong>
        </td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2" align="left">
        1. Не являются страховыми случаями события, если имеют место следующие обстоятельства: наступление события является следствием употребления застрахованным лицом алкоголя, его заменителей (включая суррогаты), наркотиков и (или) токсических веществ, включая случаи отравления вышеуказанными веществами; при наступлении события застрахованное лицо находилось в состоянии алкогольного и (или) наркотического и (или) токсического опьянения, даже если состояние опьянения не является причиной события (данное условие действует независимо от степени опьянения и концентрации (содержания) алкогольных и (или) наркотических и (или) токсических веществ); наступление события является следствием поражения иммунной системы, органов и (или) систем органов, а также заболеваний (включая психические расстройства), связанных с однократным, регулярным или длительным употреблением алкогольных (включая суррогаты), наркотических и (или) токсических веществ.
        <br>2. Не являются страховыми случаями, указаные в полисе события, если: событие наступило в результате прямых или косвенных последствий принятия лекарств или каких-либо медицинских процедур без назначения врача (исключением не будет являться принятие лекарств, зарегистрированных Минздравом РФ, находящихся в свободной продаже, в случае их использования в соответствии с инструкцией по применению); событие произошло вследствие прямого или косвенного воздействия любых видов оружия, вооружений (включая последствия его применения, в том числе пожара, взрыва, ударной волны и иных негативных факторов), предназначенных для живых лиц и (или) объектов инфраструктуры (включая военную инфраструктуру), независимо от вида носителей (танковое, корабельное, авиационное и т.п.), характера поражающего действия, назначения и способа доставки к цели.
        <br>3. Не являются страховыми случаями: события, наступившие в результате заболевания СПИДом, психическим заболеванием, или ВИЧ-инфекцией; смерть и (или) инвалидность, наступившие вследствие заболевания или состояния, диагностированного или имевшегося (для состояния) у застрахованного до заключения договора, или если такое заболевание или состояние способствовало наступлению события, являясь сочетанным, конкурирующим, фоновым, сопутствующим к заболеванию или состоянию, которое стало причиной наступившего события, при условии, что страховщик не был поставлен о нем в известность при заключении договора; события, произошедшие за пределами территории страхования.
        <br>4. Страховыми случаями не являются события, произошедшие при следующих обстоятельствах: совершения застрахованным противоправных действий, за которые предусмотрена ответственность действующим Уголовным Кодексом РФ или главами 6, 17 – 20 Кодекса Российской Федерации об административных правонарушениях; управления застрахованным любым транспортным средством без права на управление либо управление транспортным средством в состоянии алкогольного, наркотического или токсического опьянения, либо передачи застрахованным управления лицу, не имевшему права на управление транспортным средством либо находившемуся в состоянии алкогольного, наркотического или токсического опьянения; занятие, в том числе на разовой основе, экстремальными видами спорта, катание на горных лыжах, сноуборде, прыжки с парашютом, полеты на дельтаплане или параплане, пилотирование летательных аппаратов, скалолазание, альпинизм, дайвинг, автоспорт, мотоспорт, любые единоборства, которые не были заявлены страховщику в письменном виде до заключения договора страхования или в период действия договора страхования до начала занятий указанными видами спорта; организованных (в составе спортивных организаций) занятий любыми видами спорта, в том числе участия застрахованного в спортивных соревнованиях, турнирах, эстафетах и тренировочных сборах, если страхователь не платил за страхование соразмерно повышенному страховому риску; управление застрахованным воздушным транспортным средством любого типа, совершение воздушного полета, за исключением авиаперелета в качестве коммерческого пассажира, имеющего оплаченный билет, а также за исключением чартерного авиаперелета, по установленному маршрутно–трассовым листом (где указано, что данное судно выполняет полеты в соответствии с заданным графиком полетов) маршруту и расписанию официально зарегистрированной авиакомпании, если иное не согласовано со страховщиком в письменной форме.
        <br>5. Страховщик освобождается от выплаты если событие, наступило вследствие: умысла страхователя, выгодоприобретателя, застрахованного лица (в том числе самоубийство, совершенное в течение первых двух лет действия страхования), воздействия ядерного взрыва, радиации или радиоактивного заражения; военных действий, а также маневров или иных военных мероприятий; гражданской войны, народных волнений всякого рода или забастовок.
        <br>6. Страховщик имеет право отказать в выплате страхового возмещения (страховой суммы) при несвоевременном уведомлении о страховом случае, если будет доказано, что отсутствие у страховщика сведений о страховом случае сказалось на его обязанности выплатить страховое возмещение.

        </td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="center" colspan="2"><strong>Раздел III. КАК ПОЛУЧИТЬ СТРАХОВУЮ ВЫПЛАТУ?</strong>
        </td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2" align="justify">
        Для получения страховой выплаты требуется представить документы, перечисленные в пунктах 6.4.2., 6.4.3., 6.5., 6.6.Правил страхования.
        <br>Страховая выплата осуществляется в течение 20 рабочих дней со дня предоставления указанных документов.
        </td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2" align="justify">Перечень документов <strong>по дополнительным страховым рискам</strong>
            предусмотрен разделом 6 Правил страхования.
        </td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2" align="justify">Страховая выплата осуществляется в течение сроков, установленных п. 6.14. Правил
            страхования.
        </td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="center" colspan="2"><strong>Раздел IV. КАК ВЕРНУТЬ СТРАХОВУЮ ПРЕМИЮ?</strong>
        </td>
    </tr>
    
    <tr>
        <td><strong>Основания для возврата страховой премии</strong></td>
        <td><strong>Сумма возврата страховой премии</strong></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="justify">Отказ от договора страхования в течение 30 календарных дней со дня его заключения
        </td>
        <td align="center">100% страховой премии</td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td align="justify">
        Отказ от договора страхования в случае ненадлежащего информирования об условиях страхования
        <br>Отказ от договора в связи с полным досрочным погашением кредита (займа)
        </td>
        <td align="center">100% страховой премии за вычетом части страховой премии, исчисляемой пропорционально времени, в течение которого действовало страхование
        </td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2" align="center"><strong>В иных случаях страховая премия возврату не подлежит.</strong></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2">Отказ от страхования возможен в отношении всех страховых рисков.</td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2">Возврат страховой премии осуществляется в течение 7 рабочих дней со дня получения
            соответствующего заявления.
        </td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2" align="center"><strong>Раздел V. КАК ПОВЛИЯЕТ ОТКАЗ ОТ СТРАХОВАНИЯ НА КРЕДИТ (ЗАЕМ)?</strong>
        </td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2" align="center">Отказ от дополнительных страховых рисков не влияет на кредит (заем).</td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2" align="center"><strong>Раздел VI. КУДА ОБРАЩАТЬСЯ?</strong></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2" align="center">Заявления о страховой выплате, об отказе от страхования, о возврате страховой
            премии, иные сообщения могут быть направлены:
        </td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td style="width: 30%"><strong>Страховщику по адресу: </strong></td>
        <td style="width: 70%">САО «ВСК», 121552, Москва, ул. Островная, 4</td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td style="width: 30%"><strong>Кредитору по адресу: </strong></td>
        <td style="width: 70%">ООО МКК "Баренц Финанс", 163045, Архангельская область, г Архангельск, проезд К.С.
            Бадигина, д. 19, офис 107
        </td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2" align="center"><strong>Раздел VII. КАК УРЕГУЛИРОВАТЬ СПОР ДО СУДА?</strong></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2">1. Направить страховщику заявление (претензию) в письменной форме.</td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2">2. Если страховщик не удовлетворил заявление (претензию), при этом размер требований не
            превышает 500 000,00 рублей, до обращения в суд необходимо обратиться к уполномоченному по правам
            потребителей финансовых услуг:
        </td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2"><strong>сайт: </strong>www.finombudsman.ru
        </td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2"><strong>адрес: </strong>119017, г. Москва, Старомонетный пер., дом 3.
        </td>
    </tr>
    <tr>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2" align="center">Рассмотрение уполномоченным по правам потребителей финансовых услуг обращения потребителя
            финансовых услуг осуществляется бесплатно.
        </td>
    </tr>
</table>