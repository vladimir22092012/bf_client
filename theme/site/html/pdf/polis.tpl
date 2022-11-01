<table style="font-size:8px">
    <tr>
        <td>
            <table>
                <tr>
                    <td style="width: 30%">
                        <img src="{$config->root_url}/theme/site/html/pdf/i/polis_logo.png" height="50"/>
                    </td>
                </tr>
                <tr>
                    <td style="width: 5%"></td>
                    <td align="center">
                        <strong>ПОЛИС – ОФЕРТА</strong><br/>
                        <strong>СТРАХОВАНИЕ ОТ НЕСЧАСТНЫХ СЛУЧАЕВ</strong><br/>
                        <strong>№ {$contract->insurance->number} от {$contract->insurance->create_date|date}г.</strong><br/>
                    </td>
                    <td style="width: 20%"></td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td align="justify">Настоящим Полисом-офертой (далее – Полис, Страховой Полис, Договор страхования)
            подтверждается заключение
            договора страхования на условиях № 195 комбинированного страхования от несчастных случаев и болезней в
            редакции от 13.04.2022 г. (далее – Правила № 195). При наличии противоречий между условиями настоящего
            Договора страхования и Правил, преимущественную силу имеют условия, содержащиеся в настоящем Договоре
            страхования. Договор страхования заключается путем вручения Страховщиком Страхователю настоящего Полиса,
            подписанного Страховщиком на основании устного заявления Страхователя. Страхователь дает согласие (совершает
            акцепт) на заключение Договора страхования оплатой страховой премии. Страхователь, оплачивая страховую
            премию, подтверждает, что ознакомился и согласен с условиями страхования, Правилами № 195, размещенными на
            официальном сайте Страховщика в информационно-телекоммуникационной сети «Интернет» по ссылке:
            https://www.vsk.ru/about/pravila_i_tarifi_strahovaniya, и своим акцептом выражает согласие на заключение и
            вручение Договора страхования на основании и в соответствии с Правилами № 195. Правила № 195 вручены
            Страхователю путем их размещения на сайте Страховщика в информационно-телекоммуникационной сети «Интернет».
            Страхователь вправе получить Правила страхования в письменном виде, обратившись в офис Страховщика.
            Предусмотренный Полисом порядок информирования об условиях Правил, делает их обязательными для Страхователя
            в случае заключения Договора.<br>Заключение данного договора не является необходимым условием для оказания
            кредитной организацией финансовых услуг, в том числе условием для выдачи кредита (займа).
        </td>
    </tr>
    <tr style="page-break-after: always">
        <td style="padding:0">
            <br/><br/>
            <table border="1" cellpadding="4" cellspacing="0">
                <tr>
                    <td><strong>Страховщик:</strong></td>
                    <td colspan="3">Страховщик: САО «ВСК», 121552, Москва, ул. Островная, 4, лицензия ЦБ РФ СЛ № 0621 от
                        11.09.2015г. ИНН 7710026574, ОГРН 1027700186062, тел.: +7 (495) 727 4444, info@vsk.ru
                    </td>
                </tr>
                <tr>
                    <td><strong>Страхователь/<br>Застрахованный: </strong></td>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <td><strong>ФИО: </strong></td>
                    <td>{$lastname|escape} {$firstname|escape} {$patronymic|escape}</td>
                </tr>
                <tr>
                    <td><strong>Дата рождения:</strong></td>
                    <td>{$birth}</td>
                    <td><strong>Гражданство:</strong></td>
                    <td>Российская Федерация</td>
                </tr>
                <tr>
                    <td><strong>Email:</strong></td>
                    <td>{$email}</td>
                    <td><strong>Телефон:</strong></td>
                    <td>{$phone}</td>
                </tr>
                <tr>
                    <td><strong>Паспортные данные:</strong></td>
                    <td colspan="3">Серия {$passport_serial|escape} Номер {$passport_number|escape},
                        Выдан {$passport_issued|escape}, Код подразделения {$passport_code|escape}, Дата
                        выдачи {$passport_date|date}</td>
                </tr>
                <tr>
                    <td><strong>Адрес:</strong></td>
                    <td colspan="3">{$regaddress_full|escape}</td>
                </tr>
                <tr>
                    <td><strong>Выгодоприобретатель:</strong></td>
                    <td colspan="3">Застрахованное лицо, а в случае его смерти - наследники по закону</td>
                </tr>
                <tr>
                    <td colspan="4">Имущественные интересы, связанные с причинением вреда здоровью Застрахованного, его
                        смертью в результате несчастного случая.
                    </td>
                </tr>
                <tr>
                    <td colspan="3"><strong>Страховые риски:</strong></td>
                    <td><strong>Размер страховой выплаты:</strong></td>
                </tr>
                <tr>
                    <td colspan="3">1. Смерть Застрахованного в результате несчастного случая, произошедшего в период
                        действия
                        настоящего договора страхования<br/>
                        2. Установление Застрахованному I (первой) либо II (второй) группы инвалидности в результате
                        несчастного случая, произошедшего в период действия настоящего договора страхования
                    </td>
                    <td align="center"><p></p>100 % страховой суммы</td>
                </tr>
                <tr>
                    <td colspan="2"><strong>Страховая сумма, руб:</strong></td>
                    <td colspan="2">{$amount} ({($amount)|price_string}).</td>
                </tr>
                <tr>
                    <td colspan="2"><strong>Страховая премия, руб:</strong></td>
                    <td colspan="2">{$contract->insurance->amount} ({$contract->insurance->amount|price_string}).</td>
                </tr>
                <tr>
                    <td colspan="2"><strong>Порядок оплаты страховой премии: </strong></td>
                    <td colspan="2">Единовременно</td>
                </tr>
                <tr>
                    <td colspan="2"><strong>Дата оплаты страховой премии (не позднее): </strong></td>
                    <td colspan="2">{$contract->insurance->start_date|date}</td>
                </tr>
                <tr>
                    <td colspan="2"><strong>Территория страхования: </strong></td>
                    <td colspan="2">Весь мир, за исключением зон военных действий</td>
                </tr>
                <tr>
                    <td colspan="2"><strong>Период ответственности страховщика: </strong></td>
                    <td colspan="2">Круглосуточно</td>
                </tr>
                <tr>
                    <td colspan="2"><strong>Срок действия договора страхования: </strong></td>
                    <td colspan="2">с 00 часов  {$contract->insurance->start_date|date}г.  по 24 часов {$contract->insurance->end_date|date}
                        г.
                    </td>
                </tr>
            </table>
            <br/><br/>
        </td>
    </tr>
    <tr align="justify">
        <td><strong>Декларация Застрахованного лица:</strong>
            <br>Оплачивая страховую премию и принимая Полис, Страхователь подтверждает, что на момент заключения
            Договора не
            имеет следующих заболеваний или состояний:
            <br>- не является инвалидом и не имеет действующего направления на медико-социальную экспертизу;
            <br>- не страдает слабоумием, рассеянным склерозом, полиомиелитом, параличом, эпилепсией, психическими
            заболеваниями;
            <br>- не состоит на учете в наркологическом, психоневрологическом диспансерах;
            <br>- не переносил черепно-мозговых травм; не страдает заболеваниями позвоночника, суставов, не имеет грыжу
            межпозвонковых дисков;
            <br>- не является временно нетрудоспособным в связи с нарушением здоровья, обусловленным травмой,
            отравлением или болезнью;
            <br>- не знает о наличии у себя заболеваний, которые могли бы потребовать хирургического лечения (кроме
            стоматологического лечения);
            <br>- не обращался (обращалась) за оказанием медицинской помощи по поводу СПИДа, не является носителям ВИЧ и
            не болен СПИДом;
            <br>- не страдает алкоголизмом и/или наркоманией;
            <br>- не имеет срок беременности (для женщин);
            <br>- возраст менее 18 и более 65 лет (включительно).
            <br>О наличии вышеуказанных заболеваний/состояний необходимо сообщить Страховщику при заключении Договора
            страхования. Лица, имеющие состояния/диагностированные заболевания из числа указанных в декларации, могут
            быть застрахованы на иных условиях, отличных от условий настоящего Договора, с учетом оценки страхового
            риска. Если будет установлен не факт сообщения Страхователем (Застрахованным лицом) достоверных сведений,
            Договор страхования может быть признан недействительным судом.
        </td>
    </tr>
</table>
<div>

</div>
<table>
    <tr>
        <td>Перечень документов, необходимых для выплаты страхового возмещения и порядок осуществления страховой выплаты
            указаны в разделе 6 Правил № 195.
        </td>
    </tr>
</table>
<div>

</div>
<div align="justify"><strong>Порядок отказа от договора страхования: </strong><br>Страхователь вправе в любой момент
    отказаться от
    Договора страхования путем подачи Страховщику письменного заявления об отказе от Договора. Возврат страховой премии
    осуществляется в течение 7 рабочих дней со дня получения соответствующего заявления по следующим основаниям:
</div>
<div>

</div>
<table border="1" cellpadding="4">
    <tr>
        <td style="width: 50%">Основания для возврата страховой премии:</td>
        <td style="width: 50%">Сумма возврата страховой премии:</td>
    </tr>
    <tr>
        <td style="width: 50%">Отказ от договора добровольного страхования в течение 14 календарных дней со дня его
            заключения
        </td>
        <td style="width: 50%">100% страховой премии</td>
    </tr>
    <tr>
        <td style="width: 50%">Отказ от договора добровольного страхования в случае ненадлежащего информирования об
            условиях страхования
        </td>
        <td style="width: 50%">100% страховой премии за вычетом части страховой премии, исчисляемой пропорционально
            времени, в течение которого действовало страхование
        </td>
    </tr>
</table>
<div>

</div>
<div>В иных случаях страховая премия возврату не подлежит, если иное не предусмотрено действующим законодательством
    Российской Федерации. При расторжении Договора страхования Страхователь предоставляет следующие документы: документ,
    удостоверяющий личность (паспорт); копию настоящего Полиса; заявление о расторжении договора страхования (в случае
    расторжения в связи с ненадлежащим информированием об условиях страхования, заявление о расторжении договора должно
    содержать обоснование ненадлежащего информирования); копию документа, подтверждающего оплату страховой премии;
    банковские реквизиты (для перечисления в безналичном порядке). Любые условия Правил № 195, противоречащие
    изложенному выше порядку расторжения Договора и возврата страховой премии не применяются.
</div>
<div align="justify"> Страхователь, оплачивая страховую премию и принимая Полис подтверждает:
    <br>- что уведомлен о том, что заключение Договора страхования с САО «ВСК» осуществляется исключительно на
    добровольной основе;
    <br>- получил при заключении настоящего Договора Ключевой информационный документ, в соответствии с требованиями
    Центрального банк Российской Федерации;
    <br>- дает разрешение САО «ВСК» на получение медицинской информации от любого врача, у которого когда-либо
    консультировался и (или) лечился, или от любой организации, обладающей информацией о состоянии его здоровья;
    <br>- уполномочивает (разрешает) любое медицинское учреждение, а также фонд обязательного медцинского страхования,
    включая его территориальные подразделения, на передачу САО «ВСК» всей информации, касающейся состояния его здоровья,
    включая копии записей в подлинных медицинских документах, в целях определния обстоятельсв наступления страхового
    случая, отказывается от каких-либо претензий по поводу этой передачи;
    <br>- заключение договора добровольного страхования на предложенных Страховщиком условиях и в соответствии с п. 8 ч.
    2 ст. 10 Федерального закона от 27.07.2006 №152-ФЗ "О персональных данных" предоставляет собственное согласие на
    обработку Операторами - Страховым акционерным обществом «ВСК», местонахождение: 121551, г. Москва, ул. Островная, д.
    4, номер в Реестре операторов персональных данных № 09-0060538, своих персональных данных в целях заключения и
    исполнения Договора страхования (перестрахования), урегулирования убытков, проверки качества оказания услуг, в
    статистических и исследовательских целях, в целях проведения мониторинга и выполнения актуарных расчетов, получения
    СМС-сообщений, иных сообщений по электронным каналам связи (в том числе мессенджеров), содержащих информацию о
    статусе урегулирования убытка по договору страхования, уведомлений об окончании срока действия договора страхования
    (возможной пролонгации), напоминания о необходимости внесения очередного страхового взноса по договору страхования,
    уведомлений о регистрации заявлений на заключение договоров страхования, в целях осуществления страховой и
    сопутствующей страхованию деятельности, обезличивание, блокирование, уничтожение, внесение в информационную систему,
    автоматическую обработку, обработку с использованием средств автоматизации или без использования таких средств.
    <br>Страховщик вправе осуществлять все необходимые действия с моими персональными данными, предусмотренные п. 3 ст.
    3 Федерального закона от 27.07.2006 № 152-ФЗ "О персональных данных", включая сбор, систематизацию, накопление,
    хранение, уточнение (обновление, изменение), использование, обезличивание, блокирование, уничтожение, внесение в
    информационную систему, автоматическую обработку, обработку с использованием средств автоматизации или без
    использования таких средств.
    <br>Согласие дается на обработку следующих предоставленных мною персональных данных: фамилия, имя, отчество, дата
    рождения, номер телефона, адрес фактического проживания, адрес регистрации, данные документа, удостоверяющего
    личность, в том числе специальных категорий: сведения об оказанных мне лечебно-медицинских и медико-профилактических
    услугах и оказании мне медицинской помощи.
    <br>Согласие действует в течение 5 (пяти) лет с даты его предоставления Оператору.
    <br>Согласие может быть в любое время отозвано субъектом персональных данных путём подачи письменного заявления в
    адрес Оператора - САО «ВСК» по адресам местонахождения с предъявлением документа, удостоверяющего личность.
    Обработка отдельных категорий персональных данных и их материальных носителей может быть продолжена оператором после
    отзыва согласия субъектом персональных данных, при условии, если это прямо предусмотрено обязательными требованиями
    страхового законодательства или законодательства об архивном деле.
</div>
<div>Сторонами Договора страхования, руководствуясь ч.2 ст.160 Гражданского кодекса Российской Федерации, достигнуто
    соглашение сторон о допустимости использования факсимильного воспроизведения подписей и оттисков печатей Страховщика
    с помощью средств копирования. Использование подобного или любого другого аналога подписи, а также печати в
    документах, изменяющих или прекращающих Договор, не допускается – такие документы рассматриваются сторонами как не
    имеющие юридической силы.
</div>
<div><strong>Страховщик:</strong><br>в лице Генерального директора<br>А.Я. Тарновского
</div>
<table>
    <tr>
        <td style="width: 10%">Подпись</td>
        <td><img src="{$config->root_url}/theme/site/html/pdf/i/polis_stamp.png" width="80"
                 style="top:30px"/></td>
    </tr>
</table>