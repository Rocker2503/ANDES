function [indicesMap] = indicesAndes(reflectancia)

    %Proyecto Nuevo ANDESVER_hoja

    mkdir 'C:\HYPER'

    cd 'C:\HYPER'
    mkdir INDICES
    cd 'C:\HYPER\INDICES'
    mkdir T1
    cd 'C:\HYPER\INDICES'
    mkdir T2
    cd 'C:\HYPER\INDICES'
    mkdir T3
    cd 'C:\HYPER\INDICES'
    mkdir T4

    cd 'C:\HYPER'

    
    %%%%%%%%%%%%%%%%%%%%%%%%%
    %Caso de prueba para T1R1
    %%%%%%%%%%%%%%%%%%%%%%%%%

    %Lectura del archivo .sig
    [wavelength, data, new_wave, new_data] = LeerArchivo(fileName);

    %Interpolacion lineal de los datos
    [wave_new, data_new] = Interpolar(wavelength,data,new_wave, new_data);

    %Calcular reflectancia para valores enteros
    [reflectancia] = CalculoReflectancia(wave_new,data_new);

    %Calcular indices
    %indicesMap corresponde a un HashMap de tipo key value
    %indicesMap('nombreIndice', valor)
    %ejemplo: indicesMap('CITRA') retorna el valor del indice CITRA
    [indicesMap] = indices(reflectancia)

    %Exportar indices
    fileNameIndice = 'C:\HYPER\INDICES\T1\T1R1-D1-INDICES.csv';
    exportarIndices(fileNameIndice, indicesMap);

    %Exportar reflectancia
    fileNameReflectancia = 'C:\HYPER\INDICES\T1\T1R1-D1-REFLECTANCIA.csv';
    exportarReflectancia(fileNameReflectancia, reflectancia);

end

    
    function [] = exportarReflectancia(fileNameReflectancia, reflectancia)
        fid= fopen(fileNameReflectancia,'w');
        fprintf(fid, 'w350_data;%f\n',reflectancia(350-349));
        fprintf(fid, 'w351_data;%f\n',reflectancia(351-349));
        fprintf(fid, 'w352_data;%f\n',reflectancia(352-349));
        fprintf(fid, 'w353_data;%f\n',reflectancia(353-349));
        fprintf(fid, 'w354_data;%f\n',reflectancia(354-349));
        fprintf(fid, 'w355_data;%f\n',reflectancia(355-349));
        fprintf(fid, 'w356_data;%f\n',reflectancia(356-349));
        fprintf(fid, 'w357_data;%f\n',reflectancia(357-349));
        fprintf(fid, 'w358_data;%f\n',reflectancia(358-349));
        fprintf(fid, 'w359_data;%f\n',reflectancia(359-349));
        fprintf(fid, 'w360_data;%f\n',reflectancia(360-349));
        fprintf(fid, 'w361_data;%f\n',reflectancia(361-349));
        fprintf(fid, 'w362_data;%f\n',reflectancia(362-349));
        fprintf(fid, 'w363_data;%f\n',reflectancia(363-349));
        fprintf(fid, 'w364_data;%f\n',reflectancia(364-349));
        fprintf(fid, 'w365_data;%f\n',reflectancia(365-349));
        fprintf(fid, 'w366_data;%f\n',reflectancia(366-349));
        fprintf(fid, 'w367_data;%f\n',reflectancia(367-349));
        fprintf(fid, 'w368_data;%f\n',reflectancia(368-349));
        fprintf(fid, 'w369_data;%f\n',reflectancia(369-349));
        fprintf(fid, 'w370_data;%f\n',reflectancia(370-349));
        fprintf(fid, 'w371_data;%f\n',reflectancia(371-349));
        fprintf(fid, 'w372_data;%f\n',reflectancia(372-349));
        fprintf(fid, 'w373_data;%f\n',reflectancia(373-349));
        fprintf(fid, 'w374_data;%f\n',reflectancia(374-349));
        fprintf(fid, 'w375_data;%f\n',reflectancia(375-349));
        fprintf(fid, 'w376_data;%f\n',reflectancia(376-349));
        fprintf(fid, 'w377_data;%f\n',reflectancia(377-349));
        fprintf(fid, 'w378_data;%f\n',reflectancia(378-349));
        fprintf(fid, 'w379_data;%f\n',reflectancia(379-349));
        fprintf(fid, 'w380_data;%f\n',reflectancia(380-349));
        fprintf(fid, 'w381_data;%f\n',reflectancia(381-349));
        fprintf(fid, 'w382_data;%f\n',reflectancia(382-349));
        fprintf(fid, 'w383_data;%f\n',reflectancia(383-349));
        fprintf(fid, 'w384_data;%f\n',reflectancia(384-349));
        fprintf(fid, 'w385_data;%f\n',reflectancia(385-349));
        fprintf(fid, 'w386_data;%f\n',reflectancia(386-349));
        fprintf(fid, 'w387_data;%f\n',reflectancia(387-349));
        fprintf(fid, 'w388_data;%f\n',reflectancia(388-349));
        fprintf(fid, 'w389_data;%f\n',reflectancia(389-349));
        fprintf(fid, 'w390_data;%f\n',reflectancia(390-349));
        fprintf(fid, 'w391_data;%f\n',reflectancia(391-349));
        fprintf(fid, 'w392_data;%f\n',reflectancia(392-349));
        fprintf(fid, 'w393_data;%f\n',reflectancia(393-349));
        fprintf(fid, 'w394_data;%f\n',reflectancia(394-349));
        fprintf(fid, 'w395_data;%f\n',reflectancia(395-349));
        fprintf(fid, 'w396_data;%f\n',reflectancia(396-349));
        fprintf(fid, 'w397_data;%f\n',reflectancia(397-349));
        fprintf(fid, 'w398_data;%f\n',reflectancia(398-349));
        fprintf(fid, 'w399_data;%f\n',reflectancia(399-349));
        fprintf(fid, 'w400_data;%f\n',reflectancia(400-349));
        fprintf(fid, 'w401_data;%f\n',reflectancia(401-349));
        fprintf(fid, 'w402_data;%f\n',reflectancia(402-349));
        fprintf(fid, 'w403_data;%f\n',reflectancia(403-349));
        fprintf(fid, 'w404_data;%f\n',reflectancia(404-349));
        fprintf(fid, 'w405_data;%f\n',reflectancia(405-349));
        fprintf(fid, 'w406_data;%f\n',reflectancia(406-349));
        fprintf(fid, 'w407_data;%f\n',reflectancia(407-349));
        fprintf(fid, 'w408_data;%f\n',reflectancia(408-349));
        fprintf(fid, 'w409_data;%f\n',reflectancia(409-349));
        fprintf(fid, 'w410_data;%f\n',reflectancia(410-349));
        fprintf(fid, 'w411_data;%f\n',reflectancia(411-349));
        fprintf(fid, 'w412_data;%f\n',reflectancia(412-349));
        fprintf(fid, 'w413_data;%f\n',reflectancia(413-349));
        fprintf(fid, 'w414_data;%f\n',reflectancia(414-349));
        fprintf(fid, 'w415_data;%f\n',reflectancia(415-349));
        fprintf(fid, 'w416_data;%f\n',reflectancia(416-349));
        fprintf(fid, 'w417_data;%f\n',reflectancia(417-349));
        fprintf(fid, 'w418_data;%f\n',reflectancia(418-349));
        fprintf(fid, 'w419_data;%f\n',reflectancia(419-349));
        fprintf(fid, 'w420_data;%f\n',reflectancia(420-349));
        fprintf(fid, 'w421_data;%f\n',reflectancia(421-349));
        fprintf(fid, 'w422_data;%f\n',reflectancia(422-349));
        fprintf(fid, 'w423_data;%f\n',reflectancia(423-349));
        fprintf(fid, 'w424_data;%f\n',reflectancia(424-349));
        fprintf(fid, 'w425_data;%f\n',reflectancia(425-349));
        fprintf(fid, 'w426_data;%f\n',reflectancia(426-349));
        fprintf(fid, 'w427_data;%f\n',reflectancia(427-349));
        fprintf(fid, 'w428_data;%f\n',reflectancia(428-349));
        fprintf(fid, 'w429_data;%f\n',reflectancia(429-349));
        fprintf(fid, 'w430_data;%f\n',reflectancia(430-349));
        fprintf(fid, 'w431_data;%f\n',reflectancia(431-349));
        fprintf(fid, 'w432_data;%f\n',reflectancia(432-349));
        fprintf(fid, 'w433_data;%f\n',reflectancia(433-349));
        fprintf(fid, 'w434_data;%f\n',reflectancia(434-349));
        fprintf(fid, 'w435_data;%f\n',reflectancia(435-349));
        fprintf(fid, 'w436_data;%f\n',reflectancia(436-349));
        fprintf(fid, 'w437_data;%f\n',reflectancia(437-349));
        fprintf(fid, 'w438_data;%f\n',reflectancia(438-349));
        fprintf(fid, 'w439_data;%f\n',reflectancia(439-349));
        fprintf(fid, 'w440_data;%f\n',reflectancia(440-349));
        fprintf(fid, 'w441_data;%f\n',reflectancia(441-349));
        fprintf(fid, 'w442_data;%f\n',reflectancia(442-349));
        fprintf(fid, 'w443_data;%f\n',reflectancia(443-349));
        fprintf(fid, 'w444_data;%f\n',reflectancia(444-349));
        fprintf(fid, 'w445_data;%f\n',reflectancia(445-349));
        fprintf(fid, 'w446_data;%f\n',reflectancia(446-349));
        fprintf(fid, 'w447_data;%f\n',reflectancia(447-349));
        fprintf(fid, 'w448_data;%f\n',reflectancia(448-349));
        fprintf(fid, 'w449_data;%f\n',reflectancia(449-349));
        fprintf(fid, 'w450_data;%f\n',reflectancia(450-349));
        fprintf(fid, 'w451_data;%f\n',reflectancia(451-349));
        fprintf(fid, 'w452_data;%f\n',reflectancia(452-349));
        fprintf(fid, 'w453_data;%f\n',reflectancia(453-349));
        fprintf(fid, 'w454_data;%f\n',reflectancia(454-349));
        fprintf(fid, 'w455_data;%f\n',reflectancia(455-349));
        fprintf(fid, 'w456_data;%f\n',reflectancia(456-349));
        fprintf(fid, 'w457_data;%f\n',reflectancia(457-349));
        fprintf(fid, 'w458_data;%f\n',reflectancia(458-349));
        fprintf(fid, 'w459_data;%f\n',reflectancia(459-349));
        fprintf(fid, 'w460_data;%f\n',reflectancia(460-349));
        fprintf(fid, 'w461_data;%f\n',reflectancia(461-349));
        fprintf(fid, 'w462_data;%f\n',reflectancia(462-349));
        fprintf(fid, 'w463_data;%f\n',reflectancia(463-349));
        fprintf(fid, 'w464_data;%f\n',reflectancia(464-349));
        fprintf(fid, 'w465_data;%f\n',reflectancia(465-349));
        fprintf(fid, 'w466_data;%f\n',reflectancia(466-349));
        fprintf(fid, 'w467_data;%f\n',reflectancia(467-349));
        fprintf(fid, 'w468_data;%f\n',reflectancia(468-349));
        fprintf(fid, 'w469_data;%f\n',reflectancia(469-349));
        fprintf(fid, 'w470_data;%f\n',reflectancia(470-349));
        fprintf(fid, 'w471_data;%f\n',reflectancia(471-349));
        fprintf(fid, 'w472_data;%f\n',reflectancia(472-349));
        fprintf(fid, 'w473_data;%f\n',reflectancia(473-349));
        fprintf(fid, 'w474_data;%f\n',reflectancia(474-349));
        fprintf(fid, 'w475_data;%f\n',reflectancia(475-349));
        fprintf(fid, 'w476_data;%f\n',reflectancia(476-349));
        fprintf(fid, 'w477_data;%f\n',reflectancia(477-349));
        fprintf(fid, 'w478_data;%f\n',reflectancia(478-349));
        fprintf(fid, 'w479_data;%f\n',reflectancia(479-349));
        fprintf(fid, 'w480_data;%f\n',reflectancia(480-349));
        fprintf(fid, 'w481_data;%f\n',reflectancia(481-349));
        fprintf(fid, 'w482_data;%f\n',reflectancia(482-349));
        fprintf(fid, 'w483_data;%f\n',reflectancia(483-349));
        fprintf(fid, 'w484_data;%f\n',reflectancia(484-349));
        fprintf(fid, 'w485_data;%f\n',reflectancia(485-349));
        fprintf(fid, 'w486_data;%f\n',reflectancia(486-349));
        fprintf(fid, 'w487_data;%f\n',reflectancia(487-349));
        fprintf(fid, 'w488_data;%f\n',reflectancia(488-349));
        fprintf(fid, 'w489_data;%f\n',reflectancia(489-349));
        fprintf(fid, 'w490_data;%f\n',reflectancia(490-349));
        fprintf(fid, 'w491_data;%f\n',reflectancia(491-349));
        fprintf(fid, 'w492_data;%f\n',reflectancia(492-349));
        fprintf(fid, 'w493_data;%f\n',reflectancia(493-349));
        fprintf(fid, 'w494_data;%f\n',reflectancia(494-349));
        fprintf(fid, 'w495_data;%f\n',reflectancia(495-349));
        fprintf(fid, 'w496_data;%f\n',reflectancia(496-349));
        fprintf(fid, 'w497_data;%f\n',reflectancia(497-349));
        fprintf(fid, 'w498_data;%f\n',reflectancia(498-349));
        fprintf(fid, 'w499_data;%f\n',reflectancia(499-349));
        fprintf(fid, 'w500_data;%f\n',reflectancia(500-349));
        fprintf(fid, 'w501_data;%f\n',reflectancia(501-349));
        fprintf(fid, 'w502_data;%f\n',reflectancia(502-349));
        fprintf(fid, 'w503_data;%f\n',reflectancia(503-349));
        fprintf(fid, 'w504_data;%f\n',reflectancia(504-349));
        fprintf(fid, 'w505_data;%f\n',reflectancia(505-349));
        fprintf(fid, 'w506_data;%f\n',reflectancia(506-349));
        fprintf(fid, 'w507_data;%f\n',reflectancia(507-349));
        fprintf(fid, 'w508_data;%f\n',reflectancia(508-349));
        fprintf(fid, 'w509_data;%f\n',reflectancia(509-349));
        fprintf(fid, 'w510_data;%f\n',reflectancia(510-349));
        fprintf(fid, 'w511_data;%f\n',reflectancia(511-349));
        fprintf(fid, 'w512_data;%f\n',reflectancia(512-349));
        fprintf(fid, 'w513_data;%f\n',reflectancia(513-349));
        fprintf(fid, 'w514_data;%f\n',reflectancia(514-349));
        fprintf(fid, 'w515_data;%f\n',reflectancia(515-349));
        fprintf(fid, 'w516_data;%f\n',reflectancia(516-349));
        fprintf(fid, 'w517_data;%f\n',reflectancia(517-349));
        fprintf(fid, 'w518_data;%f\n',reflectancia(518-349));
        fprintf(fid, 'w519_data;%f\n',reflectancia(519-349));
        fprintf(fid, 'w520_data;%f\n',reflectancia(520-349));
        fprintf(fid, 'w521_data;%f\n',reflectancia(521-349));
        fprintf(fid, 'w522_data;%f\n',reflectancia(522-349));
        fprintf(fid, 'w523_data;%f\n',reflectancia(523-349));
        fprintf(fid, 'w524_data;%f\n',reflectancia(524-349));
        fprintf(fid, 'w525_data;%f\n',reflectancia(525-349));
        fprintf(fid, 'w526_data;%f\n',reflectancia(526-349));
        fprintf(fid, 'w527_data;%f\n',reflectancia(527-349));
        fprintf(fid, 'w528_data;%f\n',reflectancia(528-349));
        fprintf(fid, 'w529_data;%f\n',reflectancia(529-349));
        fprintf(fid, 'w530_data;%f\n',reflectancia(530-349));
        fprintf(fid, 'w531_data;%f\n',reflectancia(531-349));
        fprintf(fid, 'w532_data;%f\n',reflectancia(532-349));
        fprintf(fid, 'w533_data;%f\n',reflectancia(533-349));
        fprintf(fid, 'w534_data;%f\n',reflectancia(534-349));
        fprintf(fid, 'w535_data;%f\n',reflectancia(535-349));
        fprintf(fid, 'w536_data;%f\n',reflectancia(536-349));
        fprintf(fid, 'w537_data;%f\n',reflectancia(537-349));
        fprintf(fid, 'w538_data;%f\n',reflectancia(538-349));
        fprintf(fid, 'w539_data;%f\n',reflectancia(539-349));
        fprintf(fid, 'w540_data;%f\n',reflectancia(540-349));
        fprintf(fid, 'w541_data;%f\n',reflectancia(541-349));
        fprintf(fid, 'w542_data;%f\n',reflectancia(542-349));
        fprintf(fid, 'w543_data;%f\n',reflectancia(543-349));
        fprintf(fid, 'w544_data;%f\n',reflectancia(544-349));
        fprintf(fid, 'w545_data;%f\n',reflectancia(545-349));
        fprintf(fid, 'w546_data;%f\n',reflectancia(546-349));
        fprintf(fid, 'w547_data;%f\n',reflectancia(547-349));
        fprintf(fid, 'w548_data;%f\n',reflectancia(548-349));
        fprintf(fid, 'w549_data;%f\n',reflectancia(549-349));
        fprintf(fid, 'w550_data;%f\n',reflectancia(550-349));
        fprintf(fid, 'w551_data;%f\n',reflectancia(551-349));
        fprintf(fid, 'w552_data;%f\n',reflectancia(552-349));
        fprintf(fid, 'w553_data;%f\n',reflectancia(553-349));
        fprintf(fid, 'w554_data;%f\n',reflectancia(554-349));
        fprintf(fid, 'w555_data;%f\n',reflectancia(555-349));
        fprintf(fid, 'w556_data;%f\n',reflectancia(556-349));
        fprintf(fid, 'w557_data;%f\n',reflectancia(557-349));
        fprintf(fid, 'w558_data;%f\n',reflectancia(558-349));
        fprintf(fid, 'w559_data;%f\n',reflectancia(559-349));
        fprintf(fid, 'w560_data;%f\n',reflectancia(560-349));
        fprintf(fid, 'w561_data;%f\n',reflectancia(561-349));
        fprintf(fid, 'w562_data;%f\n',reflectancia(562-349));
        fprintf(fid, 'w563_data;%f\n',reflectancia(563-349));
        fprintf(fid, 'w564_data;%f\n',reflectancia(564-349));
        fprintf(fid, 'w565_data;%f\n',reflectancia(565-349));
        fprintf(fid, 'w566_data;%f\n',reflectancia(566-349));
        fprintf(fid, 'w567_data;%f\n',reflectancia(567-349));
        fprintf(fid, 'w568_data;%f\n',reflectancia(568-349));
        fprintf(fid, 'w569_data;%f\n',reflectancia(569-349));
        fprintf(fid, 'w570_data;%f\n',reflectancia(570-349));
        fprintf(fid, 'w571_data;%f\n',reflectancia(571-349));
        fprintf(fid, 'w572_data;%f\n',reflectancia(572-349));
        fprintf(fid, 'w573_data;%f\n',reflectancia(573-349));
        fprintf(fid, 'w574_data;%f\n',reflectancia(574-349));
        fprintf(fid, 'w575_data;%f\n',reflectancia(575-349));
        fprintf(fid, 'w576_data;%f\n',reflectancia(576-349));
        fprintf(fid, 'w577_data;%f\n',reflectancia(577-349));
        fprintf(fid, 'w578_data;%f\n',reflectancia(578-349));
        fprintf(fid, 'w579_data;%f\n',reflectancia(579-349));
        fprintf(fid, 'w580_data;%f\n',reflectancia(580-349));
        fprintf(fid, 'w581_data;%f\n',reflectancia(581-349));
        fprintf(fid, 'w582_data;%f\n',reflectancia(582-349));
        fprintf(fid, 'w583_data;%f\n',reflectancia(583-349));
        fprintf(fid, 'w584_data;%f\n',reflectancia(584-349));
        fprintf(fid, 'w585_data;%f\n',reflectancia(585-349));
        fprintf(fid, 'w586_data;%f\n',reflectancia(586-349));
        fprintf(fid, 'w587_data;%f\n',reflectancia(587-349));
        fprintf(fid, 'w588_data;%f\n',reflectancia(588-349));
        fprintf(fid, 'w589_data;%f\n',reflectancia(589-349));
        fprintf(fid, 'w590_data;%f\n',reflectancia(590-349));
        fprintf(fid, 'w591_data;%f\n',reflectancia(591-349));
        fprintf(fid, 'w592_data;%f\n',reflectancia(592-349));
        fprintf(fid, 'w593_data;%f\n',reflectancia(593-349));
        fprintf(fid, 'w594_data;%f\n',reflectancia(594-349));
        fprintf(fid, 'w595_data;%f\n',reflectancia(595-349));
        fprintf(fid, 'w596_data;%f\n',reflectancia(596-349));
        fprintf(fid, 'w597_data;%f\n',reflectancia(597-349));
        fprintf(fid, 'w598_data;%f\n',reflectancia(598-349));
        fprintf(fid, 'w599_data;%f\n',reflectancia(599-349));
        fprintf(fid, 'w600_data;%f\n',reflectancia(600-349));
        fprintf(fid, 'w601_data;%f\n',reflectancia(601-349));
        fprintf(fid, 'w602_data;%f\n',reflectancia(602-349));
        fprintf(fid, 'w603_data;%f\n',reflectancia(603-349));
        fprintf(fid, 'w604_data;%f\n',reflectancia(604-349));
        fprintf(fid, 'w605_data;%f\n',reflectancia(605-349));
        fprintf(fid, 'w606_data;%f\n',reflectancia(606-349));
        fprintf(fid, 'w607_data;%f\n',reflectancia(607-349));
        fprintf(fid, 'w608_data;%f\n',reflectancia(608-349));
        fprintf(fid, 'w609_data;%f\n',reflectancia(609-349));
        fprintf(fid, 'w610_data;%f\n',reflectancia(610-349));
        fprintf(fid, 'w611_data;%f\n',reflectancia(611-349));
        fprintf(fid, 'w612_data;%f\n',reflectancia(612-349));
        fprintf(fid, 'w613_data;%f\n',reflectancia(613-349));
        fprintf(fid, 'w614_data;%f\n',reflectancia(614-349));
        fprintf(fid, 'w615_data;%f\n',reflectancia(615-349));
        fprintf(fid, 'w616_data;%f\n',reflectancia(616-349));
        fprintf(fid, 'w617_data;%f\n',reflectancia(617-349));
        fprintf(fid, 'w618_data;%f\n',reflectancia(618-349));
        fprintf(fid, 'w619_data;%f\n',reflectancia(619-349));
        fprintf(fid, 'w620_data;%f\n',reflectancia(620-349));
        fprintf(fid, 'w621_data;%f\n',reflectancia(621-349));
        fprintf(fid, 'w622_data;%f\n',reflectancia(622-349));
        fprintf(fid, 'w623_data;%f\n',reflectancia(623-349));
        fprintf(fid, 'w624_data;%f\n',reflectancia(624-349));
        fprintf(fid, 'w625_data;%f\n',reflectancia(625-349));
        fprintf(fid, 'w626_data;%f\n',reflectancia(626-349));
        fprintf(fid, 'w627_data;%f\n',reflectancia(627-349));
        fprintf(fid, 'w628_data;%f\n',reflectancia(628-349));
        fprintf(fid, 'w629_data;%f\n',reflectancia(629-349));
        fprintf(fid, 'w630_data;%f\n',reflectancia(630-349));
        fprintf(fid, 'w631_data;%f\n',reflectancia(631-349));
        fprintf(fid, 'w632_data;%f\n',reflectancia(632-349));
        fprintf(fid, 'w633_data;%f\n',reflectancia(633-349));
        fprintf(fid, 'w634_data;%f\n',reflectancia(634-349));
        fprintf(fid, 'w635_data;%f\n',reflectancia(635-349));
        fprintf(fid, 'w636_data;%f\n',reflectancia(636-349));
        fprintf(fid, 'w637_data;%f\n',reflectancia(637-349));
        fprintf(fid, 'w638_data;%f\n',reflectancia(638-349));
        fprintf(fid, 'w639_data;%f\n',reflectancia(639-349));
        fprintf(fid, 'w640_data;%f\n',reflectancia(640-349));
        fprintf(fid, 'w641_data;%f\n',reflectancia(641-349));
        fprintf(fid, 'w642_data;%f\n',reflectancia(642-349));
        fprintf(fid, 'w643_data;%f\n',reflectancia(643-349));
        fprintf(fid, 'w644_data;%f\n',reflectancia(644-349));
        fprintf(fid, 'w645_data;%f\n',reflectancia(645-349));
        fprintf(fid, 'w646_data;%f\n',reflectancia(646-349));
        fprintf(fid, 'w647_data;%f\n',reflectancia(647-349));
        fprintf(fid, 'w648_data;%f\n',reflectancia(648-349));
        fprintf(fid, 'w649_data;%f\n',reflectancia(649-349));
        fprintf(fid, 'w650_data;%f\n',reflectancia(650-349));
        fprintf(fid, 'w651_data;%f\n',reflectancia(651-349));
        fprintf(fid, 'w652_data;%f\n',reflectancia(652-349));
        fprintf(fid, 'w653_data;%f\n',reflectancia(653-349));
        fprintf(fid, 'w654_data;%f\n',reflectancia(654-349));
        fprintf(fid, 'w655_data;%f\n',reflectancia(655-349));
        fprintf(fid, 'w656_data;%f\n',reflectancia(656-349));
        fprintf(fid, 'w657_data;%f\n',reflectancia(657-349));
        fprintf(fid, 'w658_data;%f\n',reflectancia(658-349));
        fprintf(fid, 'w659_data;%f\n',reflectancia(659-349));
        fprintf(fid, 'w660_data;%f\n',reflectancia(660-349));
        fprintf(fid, 'w661_data;%f\n',reflectancia(661-349));
        fprintf(fid, 'w662_data;%f\n',reflectancia(662-349));
        fprintf(fid, 'w663_data;%f\n',reflectancia(663-349));
        fprintf(fid, 'w664_data;%f\n',reflectancia(664-349));
        fprintf(fid, 'w665_data;%f\n',reflectancia(665-349));
        fprintf(fid, 'w666_data;%f\n',reflectancia(666-349));
        fprintf(fid, 'w667_data;%f\n',reflectancia(667-349));
        fprintf(fid, 'w668_data;%f\n',reflectancia(668-349));
        fprintf(fid, 'w669_data;%f\n',reflectancia(669-349));
        fprintf(fid, 'w670_data;%f\n',reflectancia(670-349));
        fprintf(fid, 'w671_data;%f\n',reflectancia(671-349));
        fprintf(fid, 'w672_data;%f\n',reflectancia(672-349));
        fprintf(fid, 'w673_data;%f\n',reflectancia(673-349));
        fprintf(fid, 'w674_data;%f\n',reflectancia(674-349));
        fprintf(fid, 'w675_data;%f\n',reflectancia(675-349));
        fprintf(fid, 'w676_data;%f\n',reflectancia(676-349));
        fprintf(fid, 'w677_data;%f\n',reflectancia(677-349));
        fprintf(fid, 'w678_data;%f\n',reflectancia(678-349));
        fprintf(fid, 'w679_data;%f\n',reflectancia(679-349));
        fprintf(fid, 'w680_data;%f\n',reflectancia(680-349));
        fprintf(fid, 'w681_data;%f\n',reflectancia(681-349));
        fprintf(fid, 'w682_data;%f\n',reflectancia(682-349));
        fprintf(fid, 'w683_data;%f\n',reflectancia(683-349));
        fprintf(fid, 'w684_data;%f\n',reflectancia(684-349));
        fprintf(fid, 'w685_data;%f\n',reflectancia(685-349));
        fprintf(fid, 'w686_data;%f\n',reflectancia(686-349));
        fprintf(fid, 'w687_data;%f\n',reflectancia(687-349));
        fprintf(fid, 'w688_data;%f\n',reflectancia(688-349));
        fprintf(fid, 'w689_data;%f\n',reflectancia(689-349));
        fprintf(fid, 'w690_data;%f\n',reflectancia(690-349));
        fprintf(fid, 'w691_data;%f\n',reflectancia(691-349));
        fprintf(fid, 'w692_data;%f\n',reflectancia(692-349));
        fprintf(fid, 'w693_data;%f\n',reflectancia(693-349));
        fprintf(fid, 'w694_data;%f\n',reflectancia(694-349));
        fprintf(fid, 'w695_data;%f\n',reflectancia(695-349));
        fprintf(fid, 'w696_data;%f\n',reflectancia(696-349));
        fprintf(fid, 'w697_data;%f\n',reflectancia(697-349));
        fprintf(fid, 'w698_data;%f\n',reflectancia(698-349));
        fprintf(fid, 'w699_data;%f\n',reflectancia(699-349));
        fprintf(fid, 'w700_data;%f\n',reflectancia(700-349));
        fprintf(fid, 'w701_data;%f\n',reflectancia(701-349));
        fprintf(fid, 'w702_data;%f\n',reflectancia(702-349));
        fprintf(fid, 'w703_data;%f\n',reflectancia(703-349));
        fprintf(fid, 'w704_data;%f\n',reflectancia(704-349));
        fprintf(fid, 'w705_data;%f\n',reflectancia(705-349));
        fprintf(fid, 'w706_data;%f\n',reflectancia(706-349));
        fprintf(fid, 'w707_data;%f\n',reflectancia(707-349));
        fprintf(fid, 'w708_data;%f\n',reflectancia(708-349));
        fprintf(fid, 'w709_data;%f\n',reflectancia(709-349));
        fprintf(fid, 'w710_data;%f\n',reflectancia(710-349));
        fprintf(fid, 'w711_data;%f\n',reflectancia(711-349));
        fprintf(fid, 'w712_data;%f\n',reflectancia(712-349));
        fprintf(fid, 'w713_data;%f\n',reflectancia(713-349));
        fprintf(fid, 'w714_data;%f\n',reflectancia(714-349));
        fprintf(fid, 'w715_data;%f\n',reflectancia(715-349));
        fprintf(fid, 'w716_data;%f\n',reflectancia(716-349));
        fprintf(fid, 'w717_data;%f\n',reflectancia(717-349));
        fprintf(fid, 'w718_data;%f\n',reflectancia(718-349));
        fprintf(fid, 'w719_data;%f\n',reflectancia(719-349));
        fprintf(fid, 'w720_data;%f\n',reflectancia(720-349));
        fprintf(fid, 'w721_data;%f\n',reflectancia(721-349));
        fprintf(fid, 'w722_data;%f\n',reflectancia(722-349));
        fprintf(fid, 'w723_data;%f\n',reflectancia(723-349));
        fprintf(fid, 'w724_data;%f\n',reflectancia(724-349));
        fprintf(fid, 'w725_data;%f\n',reflectancia(725-349));
        fprintf(fid, 'w726_data;%f\n',reflectancia(726-349));
        fprintf(fid, 'w727_data;%f\n',reflectancia(727-349));
        fprintf(fid, 'w728_data;%f\n',reflectancia(728-349));
        fprintf(fid, 'w729_data;%f\n',reflectancia(729-349));
        fprintf(fid, 'w730_data;%f\n',reflectancia(730-349));
        fprintf(fid, 'w731_data;%f\n',reflectancia(731-349));
        fprintf(fid, 'w732_data;%f\n',reflectancia(732-349));
        fprintf(fid, 'w733_data;%f\n',reflectancia(733-349));
        fprintf(fid, 'w734_data;%f\n',reflectancia(734-349));
        fprintf(fid, 'w735_data;%f\n',reflectancia(735-349));
        fprintf(fid, 'w736_data;%f\n',reflectancia(736-349));
        fprintf(fid, 'w737_data;%f\n',reflectancia(737-349));
        fprintf(fid, 'w738_data;%f\n',reflectancia(738-349));
        fprintf(fid, 'w739_data;%f\n',reflectancia(739-349));
        fprintf(fid, 'w740_data;%f\n',reflectancia(740-349));
        fprintf(fid, 'w741_data;%f\n',reflectancia(741-349));
        fprintf(fid, 'w742_data;%f\n',reflectancia(742-349));
        fprintf(fid, 'w743_data;%f\n',reflectancia(743-349));
        fprintf(fid, 'w744_data;%f\n',reflectancia(744-349));
        fprintf(fid, 'w745_data;%f\n',reflectancia(745-349));
        fprintf(fid, 'w746_data;%f\n',reflectancia(746-349));
        fprintf(fid, 'w747_data;%f\n',reflectancia(747-349));
        fprintf(fid, 'w748_data;%f\n',reflectancia(748-349));
        fprintf(fid, 'w749_data;%f\n',reflectancia(749-349));
        fprintf(fid, 'w750_data;%f\n',reflectancia(750-349));
        fprintf(fid, 'w751_data;%f\n',reflectancia(751-349));
        fprintf(fid, 'w752_data;%f\n',reflectancia(752-349));
        fprintf(fid, 'w753_data;%f\n',reflectancia(753-349));
        fprintf(fid, 'w754_data;%f\n',reflectancia(754-349));
        fprintf(fid, 'w755_data;%f\n',reflectancia(755-349));
        fprintf(fid, 'w756_data;%f\n',reflectancia(756-349));
        fprintf(fid, 'w757_data;%f\n',reflectancia(757-349));
        fprintf(fid, 'w758_data;%f\n',reflectancia(758-349));
        fprintf(fid, 'w759_data;%f\n',reflectancia(759-349));
        fprintf(fid, 'w760_data;%f\n',reflectancia(760-349));
        fprintf(fid, 'w761_data;%f\n',reflectancia(761-349));
        fprintf(fid, 'w762_data;%f\n',reflectancia(762-349));
        fprintf(fid, 'w763_data;%f\n',reflectancia(763-349));
        fprintf(fid, 'w764_data;%f\n',reflectancia(764-349));
        fprintf(fid, 'w765_data;%f\n',reflectancia(765-349));
        fprintf(fid, 'w766_data;%f\n',reflectancia(766-349));
        fprintf(fid, 'w767_data;%f\n',reflectancia(767-349));
        fprintf(fid, 'w768_data;%f\n',reflectancia(768-349));
        fprintf(fid, 'w769_data;%f\n',reflectancia(769-349));
        fprintf(fid, 'w770_data;%f\n',reflectancia(770-349));
        fprintf(fid, 'w771_data;%f\n',reflectancia(771-349));
        fprintf(fid, 'w772_data;%f\n',reflectancia(772-349));
        fprintf(fid, 'w773_data;%f\n',reflectancia(773-349));
        fprintf(fid, 'w774_data;%f\n',reflectancia(774-349));
        fprintf(fid, 'w775_data;%f\n',reflectancia(775-349));
        fprintf(fid, 'w776_data;%f\n',reflectancia(776-349));
        fprintf(fid, 'w777_data;%f\n',reflectancia(777-349));
        fprintf(fid, 'w778_data;%f\n',reflectancia(778-349));
        fprintf(fid, 'w779_data;%f\n',reflectancia(779-349));
        fprintf(fid, 'w780_data;%f\n',reflectancia(780-349));
        fprintf(fid, 'w781_data;%f\n',reflectancia(781-349));
        fprintf(fid, 'w782_data;%f\n',reflectancia(782-349));
        fprintf(fid, 'w783_data;%f\n',reflectancia(783-349));
        fprintf(fid, 'w784_data;%f\n',reflectancia(784-349));
        fprintf(fid, 'w785_data;%f\n',reflectancia(785-349));
        fprintf(fid, 'w786_data;%f\n',reflectancia(786-349));
        fprintf(fid, 'w787_data;%f\n',reflectancia(787-349));
        fprintf(fid, 'w788_data;%f\n',reflectancia(788-349));
        fprintf(fid, 'w789_data;%f\n',reflectancia(789-349));
        fprintf(fid, 'w790_data;%f\n',reflectancia(790-349));
        fprintf(fid, 'w791_data;%f\n',reflectancia(791-349));
        fprintf(fid, 'w792_data;%f\n',reflectancia(792-349));
        fprintf(fid, 'w793_data;%f\n',reflectancia(793-349));
        fprintf(fid, 'w794_data;%f\n',reflectancia(794-349));
        fprintf(fid, 'w795_data;%f\n',reflectancia(795-349));
        fprintf(fid, 'w796_data;%f\n',reflectancia(796-349));
        fprintf(fid, 'w797_data;%f\n',reflectancia(797-349));
        fprintf(fid, 'w798_data;%f\n',reflectancia(798-349));
        fprintf(fid, 'w799_data;%f\n',reflectancia(799-349));
        fprintf(fid, 'w800_data;%f\n',reflectancia(800-349));
        fprintf(fid, 'w801_data;%f\n',reflectancia(801-349));
        fprintf(fid, 'w802_data;%f\n',reflectancia(802-349));
        fprintf(fid, 'w803_data;%f\n',reflectancia(803-349));
        fprintf(fid, 'w804_data;%f\n',reflectancia(804-349));
        fprintf(fid, 'w805_data;%f\n',reflectancia(805-349));
        fprintf(fid, 'w806_data;%f\n',reflectancia(806-349));
        fprintf(fid, 'w807_data;%f\n',reflectancia(807-349));
        fprintf(fid, 'w808_data;%f\n',reflectancia(808-349));
        fprintf(fid, 'w809_data;%f\n',reflectancia(809-349));
        fprintf(fid, 'w810_data;%f\n',reflectancia(810-349));
        fprintf(fid, 'w811_data;%f\n',reflectancia(811-349));
        fprintf(fid, 'w812_data;%f\n',reflectancia(812-349));
        fprintf(fid, 'w813_data;%f\n',reflectancia(813-349));
        fprintf(fid, 'w814_data;%f\n',reflectancia(814-349));
        fprintf(fid, 'w815_data;%f\n',reflectancia(815-349));
        fprintf(fid, 'w816_data;%f\n',reflectancia(816-349));
        fprintf(fid, 'w817_data;%f\n',reflectancia(817-349));
        fprintf(fid, 'w818_data;%f\n',reflectancia(818-349));
        fprintf(fid, 'w819_data;%f\n',reflectancia(819-349));
        fprintf(fid, 'w820_data;%f\n',reflectancia(820-349));
        fprintf(fid, 'w821_data;%f\n',reflectancia(821-349));
        fprintf(fid, 'w822_data;%f\n',reflectancia(822-349));
        fprintf(fid, 'w823_data;%f\n',reflectancia(823-349));
        fprintf(fid, 'w824_data;%f\n',reflectancia(824-349));
        fprintf(fid, 'w825_data;%f\n',reflectancia(825-349));
        fprintf(fid, 'w826_data;%f\n',reflectancia(826-349));
        fprintf(fid, 'w827_data;%f\n',reflectancia(827-349));
        fprintf(fid, 'w828_data;%f\n',reflectancia(828-349));
        fprintf(fid, 'w829_data;%f\n',reflectancia(829-349));
        fprintf(fid, 'w830_data;%f\n',reflectancia(830-349));
        fprintf(fid, 'w831_data;%f\n',reflectancia(831-349));
        fprintf(fid, 'w832_data;%f\n',reflectancia(832-349));
        fprintf(fid, 'w833_data;%f\n',reflectancia(833-349));
        fprintf(fid, 'w834_data;%f\n',reflectancia(834-349));
        fprintf(fid, 'w835_data;%f\n',reflectancia(835-349));
        fprintf(fid, 'w836_data;%f\n',reflectancia(836-349));
        fprintf(fid, 'w837_data;%f\n',reflectancia(837-349));
        fprintf(fid, 'w838_data;%f\n',reflectancia(838-349));
        fprintf(fid, 'w839_data;%f\n',reflectancia(839-349));
        fprintf(fid, 'w840_data;%f\n',reflectancia(840-349));
        fprintf(fid, 'w841_data;%f\n',reflectancia(841-349));
        fprintf(fid, 'w842_data;%f\n',reflectancia(842-349));
        fprintf(fid, 'w843_data;%f\n',reflectancia(843-349));
        fprintf(fid, 'w844_data;%f\n',reflectancia(844-349));
        fprintf(fid, 'w845_data;%f\n',reflectancia(845-349));
        fprintf(fid, 'w846_data;%f\n',reflectancia(846-349));
        fprintf(fid, 'w847_data;%f\n',reflectancia(847-349));
        fprintf(fid, 'w848_data;%f\n',reflectancia(848-349));
        fprintf(fid, 'w849_data;%f\n',reflectancia(849-349));
        fprintf(fid, 'w850_data;%f\n',reflectancia(850-349));
        fprintf(fid, 'w851_data;%f\n',reflectancia(851-349));
        fprintf(fid, 'w852_data;%f\n',reflectancia(852-349));
        fprintf(fid, 'w853_data;%f\n',reflectancia(853-349));
        fprintf(fid, 'w854_data;%f\n',reflectancia(854-349));
        fprintf(fid, 'w855_data;%f\n',reflectancia(855-349));
        fprintf(fid, 'w856_data;%f\n',reflectancia(856-349));
        fprintf(fid, 'w857_data;%f\n',reflectancia(857-349));
        fprintf(fid, 'w858_data;%f\n',reflectancia(858-349));
        fprintf(fid, 'w859_data;%f\n',reflectancia(859-349));
        fprintf(fid, 'w860_data;%f\n',reflectancia(860-349));
        fprintf(fid, 'w861_data;%f\n',reflectancia(861-349));
        fprintf(fid, 'w862_data;%f\n',reflectancia(862-349));
        fprintf(fid, 'w863_data;%f\n',reflectancia(863-349));
        fprintf(fid, 'w864_data;%f\n',reflectancia(864-349));
        fprintf(fid, 'w865_data;%f\n',reflectancia(865-349));
        fprintf(fid, 'w866_data;%f\n',reflectancia(866-349));
        fprintf(fid, 'w867_data;%f\n',reflectancia(867-349));
        fprintf(fid, 'w868_data;%f\n',reflectancia(868-349));
        fprintf(fid, 'w869_data;%f\n',reflectancia(869-349));
        fprintf(fid, 'w870_data;%f\n',reflectancia(870-349));
        fprintf(fid, 'w871_data;%f\n',reflectancia(871-349));
        fprintf(fid, 'w872_data;%f\n',reflectancia(872-349));
        fprintf(fid, 'w873_data;%f\n',reflectancia(873-349));
        fprintf(fid, 'w874_data;%f\n',reflectancia(874-349));
        fprintf(fid, 'w875_data;%f\n',reflectancia(875-349));
        fprintf(fid, 'w876_data;%f\n',reflectancia(876-349));
        fprintf(fid, 'w877_data;%f\n',reflectancia(877-349));
        fprintf(fid, 'w878_data;%f\n',reflectancia(878-349));
        fprintf(fid, 'w879_data;%f\n',reflectancia(879-349));
        fprintf(fid, 'w880_data;%f\n',reflectancia(880-349));
        fprintf(fid, 'w881_data;%f\n',reflectancia(881-349));
        fprintf(fid, 'w882_data;%f\n',reflectancia(882-349));
        fprintf(fid, 'w883_data;%f\n',reflectancia(883-349));
        fprintf(fid, 'w884_data;%f\n',reflectancia(884-349));
        fprintf(fid, 'w885_data;%f\n',reflectancia(885-349));
        fprintf(fid, 'w886_data;%f\n',reflectancia(886-349));
        fprintf(fid, 'w887_data;%f\n',reflectancia(887-349));
        fprintf(fid, 'w888_data;%f\n',reflectancia(888-349));
        fprintf(fid, 'w889_data;%f\n',reflectancia(889-349));
        fprintf(fid, 'w890_data;%f\n',reflectancia(890-349));
        fprintf(fid, 'w891_data;%f\n',reflectancia(891-349));
        fprintf(fid, 'w892_data;%f\n',reflectancia(892-349));
        fprintf(fid, 'w893_data;%f\n',reflectancia(893-349));
        fprintf(fid, 'w894_data;%f\n',reflectancia(894-349));
        fprintf(fid, 'w895_data;%f\n',reflectancia(895-349));
        fprintf(fid, 'w896_data;%f\n',reflectancia(896-349));
        fprintf(fid, 'w897_data;%f\n',reflectancia(897-349));
        fprintf(fid, 'w898_data;%f\n',reflectancia(898-349));
        fprintf(fid, 'w899_data;%f\n',reflectancia(899-349));
        fprintf(fid, 'w900_data;%f\n',reflectancia(900-349));
        fprintf(fid, 'w901_data;%f\n',reflectancia(901-349));
        fprintf(fid, 'w902_data;%f\n',reflectancia(902-349));
        fprintf(fid, 'w903_data;%f\n',reflectancia(903-349));
        fprintf(fid, 'w904_data;%f\n',reflectancia(904-349));
        fprintf(fid, 'w905_data;%f\n',reflectancia(905-349));
        fprintf(fid, 'w906_data;%f\n',reflectancia(906-349));
        fprintf(fid, 'w907_data;%f\n',reflectancia(907-349));
        fprintf(fid, 'w908_data;%f\n',reflectancia(908-349));
        fprintf(fid, 'w909_data;%f\n',reflectancia(909-349));
        fprintf(fid, 'w910_data;%f\n',reflectancia(910-349));
        fprintf(fid, 'w911_data;%f\n',reflectancia(911-349));
        fprintf(fid, 'w912_data;%f\n',reflectancia(912-349));
        fprintf(fid, 'w913_data;%f\n',reflectancia(913-349));
        fprintf(fid, 'w914_data;%f\n',reflectancia(914-349));
        fprintf(fid, 'w915_data;%f\n',reflectancia(915-349));
        fprintf(fid, 'w916_data;%f\n',reflectancia(916-349));
        fprintf(fid, 'w917_data;%f\n',reflectancia(917-349));
        fprintf(fid, 'w918_data;%f\n',reflectancia(918-349));
        fprintf(fid, 'w919_data;%f\n',reflectancia(919-349));
        fprintf(fid, 'w920_data;%f\n',reflectancia(920-349));
        fprintf(fid, 'w921_data;%f\n',reflectancia(921-349));
        fprintf(fid, 'w922_data;%f\n',reflectancia(922-349));
        fprintf(fid, 'w923_data;%f\n',reflectancia(923-349));
        fprintf(fid, 'w924_data;%f\n',reflectancia(924-349));
        fprintf(fid, 'w925_data;%f\n',reflectancia(925-349));
        fprintf(fid, 'w926_data;%f\n',reflectancia(926-349));
        fprintf(fid, 'w927_data;%f\n',reflectancia(927-349));
        fprintf(fid, 'w928_data;%f\n',reflectancia(928-349));
        fprintf(fid, 'w929_data;%f\n',reflectancia(929-349));
        fprintf(fid, 'w930_data;%f\n',reflectancia(930-349));
        fprintf(fid, 'w931_data;%f\n',reflectancia(931-349));
        fprintf(fid, 'w932_data;%f\n',reflectancia(932-349));
        fprintf(fid, 'w933_data;%f\n',reflectancia(933-349));
        fprintf(fid, 'w934_data;%f\n',reflectancia(934-349));
        fprintf(fid, 'w935_data;%f\n',reflectancia(935-349));
        fprintf(fid, 'w936_data;%f\n',reflectancia(936-349));
        fprintf(fid, 'w937_data;%f\n',reflectancia(937-349));
        fprintf(fid, 'w938_data;%f\n',reflectancia(938-349));
        fprintf(fid, 'w939_data;%f\n',reflectancia(939-349));
        fprintf(fid, 'w940_data;%f\n',reflectancia(940-349));
        fprintf(fid, 'w941_data;%f\n',reflectancia(941-349));
        fprintf(fid, 'w942_data;%f\n',reflectancia(942-349));
        fprintf(fid, 'w943_data;%f\n',reflectancia(943-349));
        fprintf(fid, 'w944_data;%f\n',reflectancia(944-349));
        fprintf(fid, 'w945_data;%f\n',reflectancia(945-349));
        fprintf(fid, 'w946_data;%f\n',reflectancia(946-349));
        fprintf(fid, 'w947_data;%f\n',reflectancia(947-349));
        fprintf(fid, 'w948_data;%f\n',reflectancia(948-349));
        fprintf(fid, 'w949_data;%f\n',reflectancia(949-349));
        fprintf(fid, 'w950_data;%f\n',reflectancia(950-349));
        fprintf(fid, 'w951_data;%f\n',reflectancia(951-349));
        fprintf(fid, 'w952_data;%f\n',reflectancia(952-349));
        fprintf(fid, 'w953_data;%f\n',reflectancia(953-349));
        fprintf(fid, 'w954_data;%f\n',reflectancia(954-349));
        fprintf(fid, 'w955_data;%f\n',reflectancia(955-349));
        fprintf(fid, 'w956_data;%f\n',reflectancia(956-349));
        fprintf(fid, 'w957_data;%f\n',reflectancia(957-349));
        fprintf(fid, 'w958_data;%f\n',reflectancia(958-349));
        fprintf(fid, 'w959_data;%f\n',reflectancia(959-349));
        fprintf(fid, 'w960_data;%f\n',reflectancia(960-349));
        fprintf(fid, 'w961_data;%f\n',reflectancia(961-349));
        fprintf(fid, 'w962_data;%f\n',reflectancia(962-349));
        fprintf(fid, 'w963_data;%f\n',reflectancia(963-349));
        fprintf(fid, 'w964_data;%f\n',reflectancia(964-349));
        fprintf(fid, 'w965_data;%f\n',reflectancia(965-349));
        fprintf(fid, 'w966_data;%f\n',reflectancia(966-349));
        fprintf(fid, 'w967_data;%f\n',reflectancia(967-349));
        fprintf(fid, 'w968_data;%f\n',reflectancia(968-349));
        fprintf(fid, 'w969_data;%f\n',reflectancia(969-349));
        fprintf(fid, 'w970_data;%f\n',reflectancia(970-349));
        fprintf(fid, 'w971_data;%f\n',reflectancia(971-349));
        fprintf(fid, 'w972_data;%f\n',reflectancia(972-349));
        fprintf(fid, 'w973_data;%f\n',reflectancia(973-349));
        fprintf(fid, 'w974_data;%f\n',reflectancia(974-349));
        fprintf(fid, 'w975_data;%f\n',reflectancia(975-349));
        fprintf(fid, 'w976_data;%f\n',reflectancia(976-349));
        fprintf(fid, 'w977_data;%f\n',reflectancia(977-349));
        fprintf(fid, 'w978_data;%f\n',reflectancia(978-349));
        fprintf(fid, 'w979_data;%f\n',reflectancia(979-349));
        fprintf(fid, 'w980_data;%f\n',reflectancia(980-349));
        fprintf(fid, 'w981_data;%f\n',reflectancia(981-349));
        fprintf(fid, 'w982_data;%f\n',reflectancia(982-349));
        fprintf(fid, 'w983_data;%f\n',reflectancia(983-349));
        fprintf(fid, 'w984_data;%f\n',reflectancia(984-349));
        fprintf(fid, 'w985_data;%f\n',reflectancia(985-349));
        fprintf(fid, 'w986_data;%f\n',reflectancia(986-349));
        fprintf(fid, 'w987_data;%f\n',reflectancia(987-349));
        fprintf(fid, 'w988_data;%f\n',reflectancia(988-349));
        fprintf(fid, 'w989_data;%f\n',reflectancia(989-349));
        fprintf(fid, 'w990_data;%f\n',reflectancia(990-349));
        fprintf(fid, 'w991_data;%f\n',reflectancia(991-349));
        fprintf(fid, 'w992_data;%f\n',reflectancia(992-349));
        fprintf(fid, 'w993_data;%f\n',reflectancia(993-349));
        fprintf(fid, 'w994_data;%f\n',reflectancia(994-349));
        fprintf(fid, 'w995_data;%f\n',reflectancia(995-349));
        fprintf(fid, 'w996_data;%f\n',reflectancia(996-349));
        fprintf(fid, 'w997_data;%f\n',reflectancia(997-349));
        fprintf(fid, 'w998_data;%f\n',reflectancia(998-349));
        fprintf(fid, 'w999_data;%f\n',reflectancia(999-349));
        fprintf(fid, 'w1000_data;%f\n',reflectancia(1000-349));
        fprintf(fid, 'w1001_data;%f\n',reflectancia(1001-349));
        fprintf(fid, 'w1002_data;%f\n',reflectancia(1002-349));
        fprintf(fid, 'w1003_data;%f\n',reflectancia(1003-349));
        fprintf(fid, 'w1004_data;%f\n',reflectancia(1004-349));
        fprintf(fid, 'w1005_data;%f\n',reflectancia(1005-349));
        fprintf(fid, 'w1006_data;%f\n',reflectancia(1006-349));
        fprintf(fid, 'w1007_data;%f\n',reflectancia(1007-349));
        fprintf(fid, 'w1008_data;%f\n',reflectancia(1008-349));
        fprintf(fid, 'w1009_data;%f\n',reflectancia(1009-349));
        fprintf(fid, 'w1010_data;%f\n',reflectancia(1010-349));
        fprintf(fid, 'w1011_data;%f\n',reflectancia(1011-349));
        fprintf(fid, 'w1012_data;%f\n',reflectancia(1012-349));
        fprintf(fid, 'w1013_data;%f\n',reflectancia(1013-349));
        fprintf(fid, 'w1014_data;%f\n',reflectancia(1014-349));
        fprintf(fid, 'w1015_data;%f\n',reflectancia(1015-349));
        fprintf(fid, 'w1016_data;%f\n',reflectancia(1016-349));
        fprintf(fid, 'w1017_data;%f\n',reflectancia(1017-349));
        fprintf(fid, 'w1018_data;%f\n',reflectancia(1018-349));
        fprintf(fid, 'w1019_data;%f\n',reflectancia(1019-349));
        fprintf(fid, 'w1020_data;%f\n',reflectancia(1020-349));
        fprintf(fid, 'w1021_data;%f\n',reflectancia(1021-349));
        fprintf(fid, 'w1022_data;%f\n',reflectancia(1022-349));
        fprintf(fid, 'w1023_data;%f\n',reflectancia(1023-349));
        fprintf(fid, 'w1024_data;%f\n',reflectancia(1024-349));
        fprintf(fid, 'w1025_data;%f\n',reflectancia(1025-349));
        fprintf(fid, 'w1026_data;%f\n',reflectancia(1026-349));
        fprintf(fid, 'w1027_data;%f\n',reflectancia(1027-349));
        fprintf(fid, 'w1028_data;%f\n',reflectancia(1028-349));
        fprintf(fid, 'w1029_data;%f\n',reflectancia(1029-349));
        fprintf(fid, 'w1030_data;%f\n',reflectancia(1030-349));
        fprintf(fid, 'w1031_data;%f\n',reflectancia(1031-349));
        fprintf(fid, 'w1032_data;%f\n',reflectancia(1032-349));
        fprintf(fid, 'w1033_data;%f\n',reflectancia(1033-349));
        fprintf(fid, 'w1034_data;%f\n',reflectancia(1034-349));
        fprintf(fid, 'w1035_data;%f\n',reflectancia(1035-349));
        fprintf(fid, 'w1036_data;%f\n',reflectancia(1036-349));
        fprintf(fid, 'w1037_data;%f\n',reflectancia(1037-349));
        fprintf(fid, 'w1038_data;%f\n',reflectancia(1038-349));
        fprintf(fid, 'w1039_data;%f\n',reflectancia(1039-349));
        fprintf(fid, 'w1040_data;%f\n',reflectancia(1040-349));
        fprintf(fid, 'w1041_data;%f\n',reflectancia(1041-349));
        fprintf(fid, 'w1042_data;%f\n',reflectancia(1042-349));
        fprintf(fid, 'w1043_data;%f\n',reflectancia(1043-349));
        fprintf(fid, 'w1044_data;%f\n',reflectancia(1044-349));
        fprintf(fid, 'w1045_data;%f\n',reflectancia(1045-349));
        fprintf(fid, 'w1046_data;%f\n',reflectancia(1046-349));
        fprintf(fid, 'w1047_data;%f\n',reflectancia(1047-349));
        fprintf(fid, 'w1048_data;%f\n',reflectancia(1048-349));
        fprintf(fid, 'w1049_data;%f\n',reflectancia(1049-349));
        fprintf(fid, 'w1050_data;%f\n',reflectancia(1050-349));
        fprintf(fid, 'w1051_data;%f\n',reflectancia(1051-349));
        fprintf(fid, 'w1052_data;%f\n',reflectancia(1052-349));
        fprintf(fid, 'w1053_data;%f\n',reflectancia(1053-349));
        fprintf(fid, 'w1054_data;%f\n',reflectancia(1054-349));
        fprintf(fid, 'w1055_data;%f\n',reflectancia(1055-349));
        fprintf(fid, 'w1056_data;%f\n',reflectancia(1056-349));
        fprintf(fid, 'w1057_data;%f\n',reflectancia(1057-349));
        fprintf(fid, 'w1058_data;%f\n',reflectancia(1058-349));
        fprintf(fid, 'w1059_data;%f\n',reflectancia(1059-349));
        fprintf(fid, 'w1060_data;%f\n',reflectancia(1060-349));
        fprintf(fid, 'w1061_data;%f\n',reflectancia(1061-349));
        fprintf(fid, 'w1062_data;%f\n',reflectancia(1062-349));
        fprintf(fid, 'w1063_data;%f\n',reflectancia(1063-349));
        fprintf(fid, 'w1064_data;%f\n',reflectancia(1064-349));
        fprintf(fid, 'w1065_data;%f\n',reflectancia(1065-349));
        fprintf(fid, 'w1066_data;%f\n',reflectancia(1066-349));
        fprintf(fid, 'w1067_data;%f\n',reflectancia(1067-349));
        fprintf(fid, 'w1068_data;%f\n',reflectancia(1068-349));
        fprintf(fid, 'w1069_data;%f\n',reflectancia(1069-349));
        fprintf(fid, 'w1070_data;%f\n',reflectancia(1070-349));
        fprintf(fid, 'w1071_data;%f\n',reflectancia(1071-349));
        fprintf(fid, 'w1072_data;%f\n',reflectancia(1072-349));
        fprintf(fid, 'w1073_data;%f\n',reflectancia(1073-349));
        fprintf(fid, 'w1074_data;%f\n',reflectancia(1074-349));
        fprintf(fid, 'w1075_data;%f\n',reflectancia(1075-349));
        fprintf(fid, 'w1076_data;%f\n',reflectancia(1076-349));
        fprintf(fid, 'w1077_data;%f\n',reflectancia(1077-349));
        fprintf(fid, 'w1078_data;%f\n',reflectancia(1078-349));
        fprintf(fid, 'w1079_data;%f\n',reflectancia(1079-349));
        fprintf(fid, 'w1080_data;%f\n',reflectancia(1080-349));
        fprintf(fid, 'w1081_data;%f\n',reflectancia(1081-349));
        fprintf(fid, 'w1082_data;%f\n',reflectancia(1082-349));
        fprintf(fid, 'w1083_data;%f\n',reflectancia(1083-349));
        fprintf(fid, 'w1084_data;%f\n',reflectancia(1084-349));
        fprintf(fid, 'w1085_data;%f\n',reflectancia(1085-349));
        fprintf(fid, 'w1086_data;%f\n',reflectancia(1086-349));
        fprintf(fid, 'w1087_data;%f\n',reflectancia(1087-349));
        fprintf(fid, 'w1088_data;%f\n',reflectancia(1088-349));
        fprintf(fid, 'w1089_data;%f\n',reflectancia(1089-349));
        fprintf(fid, 'w1090_data;%f\n',reflectancia(1090-349));
        fprintf(fid, 'w1091_data;%f\n',reflectancia(1091-349));
        fprintf(fid, 'w1092_data;%f\n',reflectancia(1092-349));
        fprintf(fid, 'w1093_data;%f\n',reflectancia(1093-349));
        fprintf(fid, 'w1094_data;%f\n',reflectancia(1094-349));
        fprintf(fid, 'w1095_data;%f\n',reflectancia(1095-349));
        fprintf(fid, 'w1096_data;%f\n',reflectancia(1096-349));
        fprintf(fid, 'w1097_data;%f\n',reflectancia(1097-349));
        fprintf(fid, 'w1098_data;%f\n',reflectancia(1098-349));
        fprintf(fid, 'w1099_data;%f\n',reflectancia(1099-349));
        fprintf(fid, 'w1100_data;%f\n',reflectancia(1100-349));
        fprintf(fid, 'w1101_data;%f\n',reflectancia(1101-349));
        fprintf(fid, 'w1102_data;%f\n',reflectancia(1102-349));
        fprintf(fid, 'w1103_data;%f\n',reflectancia(1103-349));
        fprintf(fid, 'w1104_data;%f\n',reflectancia(1104-349));
        fprintf(fid, 'w1105_data;%f\n',reflectancia(1105-349));
        fprintf(fid, 'w1106_data;%f\n',reflectancia(1106-349));
        fprintf(fid, 'w1107_data;%f\n',reflectancia(1107-349));
        fprintf(fid, 'w1108_data;%f\n',reflectancia(1108-349));
        fprintf(fid, 'w1109_data;%f\n',reflectancia(1109-349));
        fprintf(fid, 'w1110_data;%f\n',reflectancia(1110-349));
        fprintf(fid, 'w1111_data;%f\n',reflectancia(1111-349));
        fprintf(fid, 'w1112_data;%f\n',reflectancia(1112-349));
        fprintf(fid, 'w1113_data;%f\n',reflectancia(1113-349));
        fprintf(fid, 'w1114_data;%f\n',reflectancia(1114-349));
        fprintf(fid, 'w1115_data;%f\n',reflectancia(1115-349));
        fprintf(fid, 'w1116_data;%f\n',reflectancia(1116-349));
        fprintf(fid, 'w1117_data;%f\n',reflectancia(1117-349));
        fprintf(fid, 'w1118_data;%f\n',reflectancia(1118-349));
        fprintf(fid, 'w1119_data;%f\n',reflectancia(1119-349));
        fprintf(fid, 'w1120_data;%f\n',reflectancia(1120-349));
        fprintf(fid, 'w1121_data;%f\n',reflectancia(1121-349));
        fprintf(fid, 'w1122_data;%f\n',reflectancia(1122-349));
        fprintf(fid, 'w1123_data;%f\n',reflectancia(1123-349));
        fprintf(fid, 'w1124_data;%f\n',reflectancia(1124-349));
        fprintf(fid, 'w1125_data;%f\n',reflectancia(1125-349));
        fprintf(fid, 'w1126_data;%f\n',reflectancia(1126-349));
        fprintf(fid, 'w1127_data;%f\n',reflectancia(1127-349));
        fprintf(fid, 'w1128_data;%f\n',reflectancia(1128-349));
        fprintf(fid, 'w1129_data;%f\n',reflectancia(1129-349));
        fprintf(fid, 'w1130_data;%f\n',reflectancia(1130-349));
        fprintf(fid, 'w1131_data;%f\n',reflectancia(1131-349));
        fprintf(fid, 'w1132_data;%f\n',reflectancia(1132-349));
        fprintf(fid, 'w1133_data;%f\n',reflectancia(1133-349));
        fprintf(fid, 'w1134_data;%f\n',reflectancia(1134-349));
        fprintf(fid, 'w1135_data;%f\n',reflectancia(1135-349));
        fprintf(fid, 'w1136_data;%f\n',reflectancia(1136-349));
        fprintf(fid, 'w1137_data;%f\n',reflectancia(1137-349));
        fprintf(fid, 'w1138_data;%f\n',reflectancia(1138-349));
        fprintf(fid, 'w1139_data;%f\n',reflectancia(1139-349));
        fprintf(fid, 'w1140_data;%f\n',reflectancia(1140-349));
        fprintf(fid, 'w1141_data;%f\n',reflectancia(1141-349));
        fprintf(fid, 'w1142_data;%f\n',reflectancia(1142-349));
        fprintf(fid, 'w1143_data;%f\n',reflectancia(1143-349));
        fprintf(fid, 'w1144_data;%f\n',reflectancia(1144-349));
        fprintf(fid, 'w1145_data;%f\n',reflectancia(1145-349));
        fprintf(fid, 'w1146_data;%f\n',reflectancia(1146-349));
        fprintf(fid, 'w1147_data;%f\n',reflectancia(1147-349));
        fprintf(fid, 'w1148_data;%f\n',reflectancia(1148-349));
        fprintf(fid, 'w1149_data;%f\n',reflectancia(1149-349));
        fprintf(fid, 'w1150_data;%f\n',reflectancia(1150-349));
        fprintf(fid, 'w1151_data;%f\n',reflectancia(1151-349));
        fprintf(fid, 'w1152_data;%f\n',reflectancia(1152-349));
        fprintf(fid, 'w1153_data;%f\n',reflectancia(1153-349));
        fprintf(fid, 'w1154_data;%f\n',reflectancia(1154-349));
        fprintf(fid, 'w1155_data;%f\n',reflectancia(1155-349));
        fprintf(fid, 'w1156_data;%f\n',reflectancia(1156-349));
        fprintf(fid, 'w1157_data;%f\n',reflectancia(1157-349));
        fprintf(fid, 'w1158_data;%f\n',reflectancia(1158-349));
        fprintf(fid, 'w1159_data;%f\n',reflectancia(1159-349));
        fprintf(fid, 'w1160_data;%f\n',reflectancia(1160-349));
        fprintf(fid, 'w1161_data;%f\n',reflectancia(1161-349));
        fprintf(fid, 'w1162_data;%f\n',reflectancia(1162-349));
        fprintf(fid, 'w1163_data;%f\n',reflectancia(1163-349));
        fprintf(fid, 'w1164_data;%f\n',reflectancia(1164-349));
        fprintf(fid, 'w1165_data;%f\n',reflectancia(1165-349));
        fprintf(fid, 'w1166_data;%f\n',reflectancia(1166-349));
        fprintf(fid, 'w1167_data;%f\n',reflectancia(1167-349));
        fprintf(fid, 'w1168_data;%f\n',reflectancia(1168-349));
        fprintf(fid, 'w1169_data;%f\n',reflectancia(1169-349));
        fprintf(fid, 'w1170_data;%f\n',reflectancia(1170-349));
        fprintf(fid, 'w1171_data;%f\n',reflectancia(1171-349));
        fprintf(fid, 'w1172_data;%f\n',reflectancia(1172-349));
        fprintf(fid, 'w1173_data;%f\n',reflectancia(1173-349));
        fprintf(fid, 'w1174_data;%f\n',reflectancia(1174-349));
        fprintf(fid, 'w1175_data;%f\n',reflectancia(1175-349));
        fprintf(fid, 'w1176_data;%f\n',reflectancia(1176-349));
        fprintf(fid, 'w1177_data;%f\n',reflectancia(1177-349));
        fprintf(fid, 'w1178_data;%f\n',reflectancia(1178-349));
        fprintf(fid, 'w1179_data;%f\n',reflectancia(1179-349));
        fprintf(fid, 'w1180_data;%f\n',reflectancia(1180-349));
        fprintf(fid, 'w1181_data;%f\n',reflectancia(1181-349));
        fprintf(fid, 'w1182_data;%f\n',reflectancia(1182-349));
        fprintf(fid, 'w1183_data;%f\n',reflectancia(1183-349));
        fprintf(fid, 'w1184_data;%f\n',reflectancia(1184-349));
        fprintf(fid, 'w1185_data;%f\n',reflectancia(1185-349));
        fprintf(fid, 'w1186_data;%f\n',reflectancia(1186-349));
        fprintf(fid, 'w1187_data;%f\n',reflectancia(1187-349));
        fprintf(fid, 'w1188_data;%f\n',reflectancia(1188-349));
        fprintf(fid, 'w1189_data;%f\n',reflectancia(1189-349));
        fprintf(fid, 'w1190_data;%f\n',reflectancia(1190-349));
        fprintf(fid, 'w1191_data;%f\n',reflectancia(1191-349));
        fprintf(fid, 'w1192_data;%f\n',reflectancia(1192-349));
        fprintf(fid, 'w1193_data;%f\n',reflectancia(1193-349));
        fprintf(fid, 'w1194_data;%f\n',reflectancia(1194-349));
        fprintf(fid, 'w1195_data;%f\n',reflectancia(1195-349));
        fprintf(fid, 'w1196_data;%f\n',reflectancia(1196-349));
        fprintf(fid, 'w1197_data;%f\n',reflectancia(1197-349));
        fprintf(fid, 'w1198_data;%f\n',reflectancia(1198-349));
        fprintf(fid, 'w1199_data;%f\n',reflectancia(1199-349));
        fprintf(fid, 'w1200_data;%f\n',reflectancia(1200-349));
        fprintf(fid, 'w1201_data;%f\n',reflectancia(1201-349));
        fprintf(fid, 'w1202_data;%f\n',reflectancia(1202-349));
        fprintf(fid, 'w1203_data;%f\n',reflectancia(1203-349));
        fprintf(fid, 'w1204_data;%f\n',reflectancia(1204-349));
        fprintf(fid, 'w1205_data;%f\n',reflectancia(1205-349));
        fprintf(fid, 'w1206_data;%f\n',reflectancia(1206-349));
        fprintf(fid, 'w1207_data;%f\n',reflectancia(1207-349));
        fprintf(fid, 'w1208_data;%f\n',reflectancia(1208-349));
        fprintf(fid, 'w1209_data;%f\n',reflectancia(1209-349));
        fprintf(fid, 'w1210_data;%f\n',reflectancia(1210-349));
        fprintf(fid, 'w1211_data;%f\n',reflectancia(1211-349));
        fprintf(fid, 'w1212_data;%f\n',reflectancia(1212-349));
        fprintf(fid, 'w1213_data;%f\n',reflectancia(1213-349));
        fprintf(fid, 'w1214_data;%f\n',reflectancia(1214-349));
        fprintf(fid, 'w1215_data;%f\n',reflectancia(1215-349));
        fprintf(fid, 'w1216_data;%f\n',reflectancia(1216-349));
        fprintf(fid, 'w1217_data;%f\n',reflectancia(1217-349));
        fprintf(fid, 'w1218_data;%f\n',reflectancia(1218-349));
        fprintf(fid, 'w1219_data;%f\n',reflectancia(1219-349));
        fprintf(fid, 'w1220_data;%f\n',reflectancia(1220-349));
        fprintf(fid, 'w1221_data;%f\n',reflectancia(1221-349));
        fprintf(fid, 'w1222_data;%f\n',reflectancia(1222-349));
        fprintf(fid, 'w1223_data;%f\n',reflectancia(1223-349));
        fprintf(fid, 'w1224_data;%f\n',reflectancia(1224-349));
        fprintf(fid, 'w1225_data;%f\n',reflectancia(1225-349));
        fprintf(fid, 'w1226_data;%f\n',reflectancia(1226-349));
        fprintf(fid, 'w1227_data;%f\n',reflectancia(1227-349));
        fprintf(fid, 'w1228_data;%f\n',reflectancia(1228-349));
        fprintf(fid, 'w1229_data;%f\n',reflectancia(1229-349));
        fprintf(fid, 'w1230_data;%f\n',reflectancia(1230-349));
        fprintf(fid, 'w1231_data;%f\n',reflectancia(1231-349));
        fprintf(fid, 'w1232_data;%f\n',reflectancia(1232-349));
        fprintf(fid, 'w1233_data;%f\n',reflectancia(1233-349));
        fprintf(fid, 'w1234_data;%f\n',reflectancia(1234-349));
        fprintf(fid, 'w1235_data;%f\n',reflectancia(1235-349));
        fprintf(fid, 'w1236_data;%f\n',reflectancia(1236-349));
        fprintf(fid, 'w1237_data;%f\n',reflectancia(1237-349));
        fprintf(fid, 'w1238_data;%f\n',reflectancia(1238-349));
        fprintf(fid, 'w1239_data;%f\n',reflectancia(1239-349));
        fprintf(fid, 'w1240_data;%f\n',reflectancia(1240-349));
        fprintf(fid, 'w1241_data;%f\n',reflectancia(1241-349));
        fprintf(fid, 'w1242_data;%f\n',reflectancia(1242-349));
        fprintf(fid, 'w1243_data;%f\n',reflectancia(1243-349));
        fprintf(fid, 'w1244_data;%f\n',reflectancia(1244-349));
        fprintf(fid, 'w1245_data;%f\n',reflectancia(1245-349));
        fprintf(fid, 'w1246_data;%f\n',reflectancia(1246-349));
        fprintf(fid, 'w1247_data;%f\n',reflectancia(1247-349));
        fprintf(fid, 'w1248_data;%f\n',reflectancia(1248-349));
        fprintf(fid, 'w1249_data;%f\n',reflectancia(1249-349));
        fprintf(fid, 'w1250_data;%f\n',reflectancia(1250-349));
        fprintf(fid, 'w1251_data;%f\n',reflectancia(1251-349));
        fprintf(fid, 'w1252_data;%f\n',reflectancia(1252-349));
        fprintf(fid, 'w1253_data;%f\n',reflectancia(1253-349));
        fprintf(fid, 'w1254_data;%f\n',reflectancia(1254-349));
        fprintf(fid, 'w1255_data;%f\n',reflectancia(1255-349));
        fprintf(fid, 'w1256_data;%f\n',reflectancia(1256-349));
        fprintf(fid, 'w1257_data;%f\n',reflectancia(1257-349));
        fprintf(fid, 'w1258_data;%f\n',reflectancia(1258-349));
        fprintf(fid, 'w1259_data;%f\n',reflectancia(1259-349));
        fprintf(fid, 'w1260_data;%f\n',reflectancia(1260-349));
        fprintf(fid, 'w1261_data;%f\n',reflectancia(1261-349));
        fprintf(fid, 'w1262_data;%f\n',reflectancia(1262-349));
        fprintf(fid, 'w1263_data;%f\n',reflectancia(1263-349));
        fprintf(fid, 'w1264_data;%f\n',reflectancia(1264-349));
        fprintf(fid, 'w1265_data;%f\n',reflectancia(1265-349));
        fprintf(fid, 'w1266_data;%f\n',reflectancia(1266-349));
        fprintf(fid, 'w1267_data;%f\n',reflectancia(1267-349));
        fprintf(fid, 'w1268_data;%f\n',reflectancia(1268-349));
        fprintf(fid, 'w1269_data;%f\n',reflectancia(1269-349));
        fprintf(fid, 'w1270_data;%f\n',reflectancia(1270-349));
        fprintf(fid, 'w1271_data;%f\n',reflectancia(1271-349));
        fprintf(fid, 'w1272_data;%f\n',reflectancia(1272-349));
        fprintf(fid, 'w1273_data;%f\n',reflectancia(1273-349));
        fprintf(fid, 'w1274_data;%f\n',reflectancia(1274-349));
        fprintf(fid, 'w1275_data;%f\n',reflectancia(1275-349));
        fprintf(fid, 'w1276_data;%f\n',reflectancia(1276-349));
        fprintf(fid, 'w1277_data;%f\n',reflectancia(1277-349));
        fprintf(fid, 'w1278_data;%f\n',reflectancia(1278-349));
        fprintf(fid, 'w1279_data;%f\n',reflectancia(1279-349));
        fprintf(fid, 'w1280_data;%f\n',reflectancia(1280-349));
        fprintf(fid, 'w1281_data;%f\n',reflectancia(1281-349));
        fprintf(fid, 'w1282_data;%f\n',reflectancia(1282-349));
        fprintf(fid, 'w1283_data;%f\n',reflectancia(1283-349));
        fprintf(fid, 'w1284_data;%f\n',reflectancia(1284-349));
        fprintf(fid, 'w1285_data;%f\n',reflectancia(1285-349));
        fprintf(fid, 'w1286_data;%f\n',reflectancia(1286-349));
        fprintf(fid, 'w1287_data;%f\n',reflectancia(1287-349));
        fprintf(fid, 'w1288_data;%f\n',reflectancia(1288-349));
        fprintf(fid, 'w1289_data;%f\n',reflectancia(1289-349));
        fprintf(fid, 'w1290_data;%f\n',reflectancia(1290-349));
        fprintf(fid, 'w1291_data;%f\n',reflectancia(1291-349));
        fprintf(fid, 'w1292_data;%f\n',reflectancia(1292-349));
        fprintf(fid, 'w1293_data;%f\n',reflectancia(1293-349));
        fprintf(fid, 'w1294_data;%f\n',reflectancia(1294-349));
        fprintf(fid, 'w1295_data;%f\n',reflectancia(1295-349));
        fprintf(fid, 'w1296_data;%f\n',reflectancia(1296-349));
        fprintf(fid, 'w1297_data;%f\n',reflectancia(1297-349));
        fprintf(fid, 'w1298_data;%f\n',reflectancia(1298-349));
        fprintf(fid, 'w1299_data;%f\n',reflectancia(1299-349));
        fprintf(fid, 'w1300_data;%f\n',reflectancia(1300-349));
        fprintf(fid, 'w1301_data;%f\n',reflectancia(1301-349));
        fprintf(fid, 'w1302_data;%f\n',reflectancia(1302-349));
        fprintf(fid, 'w1303_data;%f\n',reflectancia(1303-349));
        fprintf(fid, 'w1304_data;%f\n',reflectancia(1304-349));
        fprintf(fid, 'w1305_data;%f\n',reflectancia(1305-349));
        fprintf(fid, 'w1306_data;%f\n',reflectancia(1306-349));
        fprintf(fid, 'w1307_data;%f\n',reflectancia(1307-349));
        fprintf(fid, 'w1308_data;%f\n',reflectancia(1308-349));
        fprintf(fid, 'w1309_data;%f\n',reflectancia(1309-349));
        fprintf(fid, 'w1310_data;%f\n',reflectancia(1310-349));
        fprintf(fid, 'w1311_data;%f\n',reflectancia(1311-349));
        fprintf(fid, 'w1312_data;%f\n',reflectancia(1312-349));
        fprintf(fid, 'w1313_data;%f\n',reflectancia(1313-349));
        fprintf(fid, 'w1314_data;%f\n',reflectancia(1314-349));
        fprintf(fid, 'w1315_data;%f\n',reflectancia(1315-349));
        fprintf(fid, 'w1316_data;%f\n',reflectancia(1316-349));
        fprintf(fid, 'w1317_data;%f\n',reflectancia(1317-349));
        fprintf(fid, 'w1318_data;%f\n',reflectancia(1318-349));
        fprintf(fid, 'w1319_data;%f\n',reflectancia(1319-349));
        fprintf(fid, 'w1320_data;%f\n',reflectancia(1320-349));
        fprintf(fid, 'w1321_data;%f\n',reflectancia(1321-349));
        fprintf(fid, 'w1322_data;%f\n',reflectancia(1322-349));
        fprintf(fid, 'w1323_data;%f\n',reflectancia(1323-349));
        fprintf(fid, 'w1324_data;%f\n',reflectancia(1324-349));
        fprintf(fid, 'w1325_data;%f\n',reflectancia(1325-349));
        fprintf(fid, 'w1326_data;%f\n',reflectancia(1326-349));
        fprintf(fid, 'w1327_data;%f\n',reflectancia(1327-349));
        fprintf(fid, 'w1328_data;%f\n',reflectancia(1328-349));
        fprintf(fid, 'w1329_data;%f\n',reflectancia(1329-349));
        fprintf(fid, 'w1330_data;%f\n',reflectancia(1330-349));
        fprintf(fid, 'w1331_data;%f\n',reflectancia(1331-349));
        fprintf(fid, 'w1332_data;%f\n',reflectancia(1332-349));
        fprintf(fid, 'w1333_data;%f\n',reflectancia(1333-349));
        fprintf(fid, 'w1334_data;%f\n',reflectancia(1334-349));
        fprintf(fid, 'w1335_data;%f\n',reflectancia(1335-349));
        fprintf(fid, 'w1336_data;%f\n',reflectancia(1336-349));
        fprintf(fid, 'w1337_data;%f\n',reflectancia(1337-349));
        fprintf(fid, 'w1338_data;%f\n',reflectancia(1338-349));
        fprintf(fid, 'w1339_data;%f\n',reflectancia(1339-349));
        fprintf(fid, 'w1340_data;%f\n',reflectancia(1340-349));
        fprintf(fid, 'w1341_data;%f\n',reflectancia(1341-349));
        fprintf(fid, 'w1342_data;%f\n',reflectancia(1342-349));
        fprintf(fid, 'w1343_data;%f\n',reflectancia(1343-349));
        fprintf(fid, 'w1344_data;%f\n',reflectancia(1344-349));
        fprintf(fid, 'w1345_data;%f\n',reflectancia(1345-349));
        fprintf(fid, 'w1346_data;%f\n',reflectancia(1346-349));
        fprintf(fid, 'w1347_data;%f\n',reflectancia(1347-349));
        fprintf(fid, 'w1348_data;%f\n',reflectancia(1348-349));
        fprintf(fid, 'w1349_data;%f\n',reflectancia(1349-349));
        fprintf(fid, 'w1350_data;%f\n',reflectancia(1350-349));
        fprintf(fid, 'w1351_data;%f\n',reflectancia(1351-349));
        fprintf(fid, 'w1352_data;%f\n',reflectancia(1352-349));
        fprintf(fid, 'w1353_data;%f\n',reflectancia(1353-349));
        fprintf(fid, 'w1354_data;%f\n',reflectancia(1354-349));
        fprintf(fid, 'w1355_data;%f\n',reflectancia(1355-349));
        fprintf(fid, 'w1356_data;%f\n',reflectancia(1356-349));
        fprintf(fid, 'w1357_data;%f\n',reflectancia(1357-349));
        fprintf(fid, 'w1358_data;%f\n',reflectancia(1358-349));
        fprintf(fid, 'w1359_data;%f\n',reflectancia(1359-349));
        fprintf(fid, 'w1360_data;%f\n',reflectancia(1360-349));
        fprintf(fid, 'w1361_data;%f\n',reflectancia(1361-349));
        fprintf(fid, 'w1362_data;%f\n',reflectancia(1362-349));
        fprintf(fid, 'w1363_data;%f\n',reflectancia(1363-349));
        fprintf(fid, 'w1364_data;%f\n',reflectancia(1364-349));
        fprintf(fid, 'w1365_data;%f\n',reflectancia(1365-349));
        fprintf(fid, 'w1366_data;%f\n',reflectancia(1366-349));
        fprintf(fid, 'w1367_data;%f\n',reflectancia(1367-349));
        fprintf(fid, 'w1368_data;%f\n',reflectancia(1368-349));
        fprintf(fid, 'w1369_data;%f\n',reflectancia(1369-349));
        fprintf(fid, 'w1370_data;%f\n',reflectancia(1370-349));
        fprintf(fid, 'w1371_data;%f\n',reflectancia(1371-349));
        fprintf(fid, 'w1372_data;%f\n',reflectancia(1372-349));
        fprintf(fid, 'w1373_data;%f\n',reflectancia(1373-349));
        fprintf(fid, 'w1374_data;%f\n',reflectancia(1374-349));
        fprintf(fid, 'w1375_data;%f\n',reflectancia(1375-349));
        fprintf(fid, 'w1376_data;%f\n',reflectancia(1376-349));
        fprintf(fid, 'w1377_data;%f\n',reflectancia(1377-349));
        fprintf(fid, 'w1378_data;%f\n',reflectancia(1378-349));
        fprintf(fid, 'w1379_data;%f\n',reflectancia(1379-349));
        fprintf(fid, 'w1380_data;%f\n',reflectancia(1380-349));
        fprintf(fid, 'w1381_data;%f\n',reflectancia(1381-349));
        fprintf(fid, 'w1382_data;%f\n',reflectancia(1382-349));
        fprintf(fid, 'w1383_data;%f\n',reflectancia(1383-349));
        fprintf(fid, 'w1384_data;%f\n',reflectancia(1384-349));
        fprintf(fid, 'w1385_data;%f\n',reflectancia(1385-349));
        fprintf(fid, 'w1386_data;%f\n',reflectancia(1386-349));
        fprintf(fid, 'w1387_data;%f\n',reflectancia(1387-349));
        fprintf(fid, 'w1388_data;%f\n',reflectancia(1388-349));
        fprintf(fid, 'w1389_data;%f\n',reflectancia(1389-349));
        fprintf(fid, 'w1390_data;%f\n',reflectancia(1390-349));
        fprintf(fid, 'w1391_data;%f\n',reflectancia(1391-349));
        fprintf(fid, 'w1392_data;%f\n',reflectancia(1392-349));
        fprintf(fid, 'w1393_data;%f\n',reflectancia(1393-349));
        fprintf(fid, 'w1394_data;%f\n',reflectancia(1394-349));
        fprintf(fid, 'w1395_data;%f\n',reflectancia(1395-349));
        fprintf(fid, 'w1396_data;%f\n',reflectancia(1396-349));
        fprintf(fid, 'w1397_data;%f\n',reflectancia(1397-349));
        fprintf(fid, 'w1398_data;%f\n',reflectancia(1398-349));
        fprintf(fid, 'w1399_data;%f\n',reflectancia(1399-349));
        fprintf(fid, 'w1400_data;%f\n',reflectancia(1400-349));
        fprintf(fid, 'w1401_data;%f\n',reflectancia(1401-349));
        fprintf(fid, 'w1402_data;%f\n',reflectancia(1402-349));
        fprintf(fid, 'w1403_data;%f\n',reflectancia(1403-349));
        fprintf(fid, 'w1404_data;%f\n',reflectancia(1404-349));
        fprintf(fid, 'w1405_data;%f\n',reflectancia(1405-349));
        fprintf(fid, 'w1406_data;%f\n',reflectancia(1406-349));
        fprintf(fid, 'w1407_data;%f\n',reflectancia(1407-349));
        fprintf(fid, 'w1408_data;%f\n',reflectancia(1408-349));
        fprintf(fid, 'w1409_data;%f\n',reflectancia(1409-349));
        fprintf(fid, 'w1410_data;%f\n',reflectancia(1410-349));
        fprintf(fid, 'w1411_data;%f\n',reflectancia(1411-349));
        fprintf(fid, 'w1412_data;%f\n',reflectancia(1412-349));
        fprintf(fid, 'w1413_data;%f\n',reflectancia(1413-349));
        fprintf(fid, 'w1414_data;%f\n',reflectancia(1414-349));
        fprintf(fid, 'w1415_data;%f\n',reflectancia(1415-349));
        fprintf(fid, 'w1416_data;%f\n',reflectancia(1416-349));
        fprintf(fid, 'w1417_data;%f\n',reflectancia(1417-349));
        fprintf(fid, 'w1418_data;%f\n',reflectancia(1418-349));
        fprintf(fid, 'w1419_data;%f\n',reflectancia(1419-349));
        fprintf(fid, 'w1420_data;%f\n',reflectancia(1420-349));
        fprintf(fid, 'w1421_data;%f\n',reflectancia(1421-349));
        fprintf(fid, 'w1422_data;%f\n',reflectancia(1422-349));
        fprintf(fid, 'w1423_data;%f\n',reflectancia(1423-349));
        fprintf(fid, 'w1424_data;%f\n',reflectancia(1424-349));
        fprintf(fid, 'w1425_data;%f\n',reflectancia(1425-349));
        fprintf(fid, 'w1426_data;%f\n',reflectancia(1426-349));
        fprintf(fid, 'w1427_data;%f\n',reflectancia(1427-349));
        fprintf(fid, 'w1428_data;%f\n',reflectancia(1428-349));
        fprintf(fid, 'w1429_data;%f\n',reflectancia(1429-349));
        fprintf(fid, 'w1430_data;%f\n',reflectancia(1430-349));
        fprintf(fid, 'w1431_data;%f\n',reflectancia(1431-349));
        fprintf(fid, 'w1432_data;%f\n',reflectancia(1432-349));
        fprintf(fid, 'w1433_data;%f\n',reflectancia(1433-349));
        fprintf(fid, 'w1434_data;%f\n',reflectancia(1434-349));
        fprintf(fid, 'w1435_data;%f\n',reflectancia(1435-349));
        fprintf(fid, 'w1436_data;%f\n',reflectancia(1436-349));
        fprintf(fid, 'w1437_data;%f\n',reflectancia(1437-349));
        fprintf(fid, 'w1438_data;%f\n',reflectancia(1438-349));
        fprintf(fid, 'w1439_data;%f\n',reflectancia(1439-349));
        fprintf(fid, 'w1440_data;%f\n',reflectancia(1440-349));
        fprintf(fid, 'w1441_data;%f\n',reflectancia(1441-349));
        fprintf(fid, 'w1442_data;%f\n',reflectancia(1442-349));
        fprintf(fid, 'w1443_data;%f\n',reflectancia(1443-349));
        fprintf(fid, 'w1444_data;%f\n',reflectancia(1444-349));
        fprintf(fid, 'w1445_data;%f\n',reflectancia(1445-349));
        fprintf(fid, 'w1446_data;%f\n',reflectancia(1446-349));
        fprintf(fid, 'w1447_data;%f\n',reflectancia(1447-349));
        fprintf(fid, 'w1448_data;%f\n',reflectancia(1448-349));
        fprintf(fid, 'w1449_data;%f\n',reflectancia(1449-349));
        fprintf(fid, 'w1450_data;%f\n',reflectancia(1450-349));
        fprintf(fid, 'w1451_data;%f\n',reflectancia(1451-349));
        fprintf(fid, 'w1452_data;%f\n',reflectancia(1452-349));
        fprintf(fid, 'w1453_data;%f\n',reflectancia(1453-349));
        fprintf(fid, 'w1454_data;%f\n',reflectancia(1454-349));
        fprintf(fid, 'w1455_data;%f\n',reflectancia(1455-349));
        fprintf(fid, 'w1456_data;%f\n',reflectancia(1456-349));
        fprintf(fid, 'w1457_data;%f\n',reflectancia(1457-349));
        fprintf(fid, 'w1458_data;%f\n',reflectancia(1458-349));
        fprintf(fid, 'w1459_data;%f\n',reflectancia(1459-349));
        fprintf(fid, 'w1460_data;%f\n',reflectancia(1460-349));
        fprintf(fid, 'w1461_data;%f\n',reflectancia(1461-349));
        fprintf(fid, 'w1462_data;%f\n',reflectancia(1462-349));
        fprintf(fid, 'w1463_data;%f\n',reflectancia(1463-349));
        fprintf(fid, 'w1464_data;%f\n',reflectancia(1464-349));
        fprintf(fid, 'w1465_data;%f\n',reflectancia(1465-349));
        fprintf(fid, 'w1466_data;%f\n',reflectancia(1466-349));
        fprintf(fid, 'w1467_data;%f\n',reflectancia(1467-349));
        fprintf(fid, 'w1468_data;%f\n',reflectancia(1468-349));
        fprintf(fid, 'w1469_data;%f\n',reflectancia(1469-349));
        fprintf(fid, 'w1470_data;%f\n',reflectancia(1470-349));
        fprintf(fid, 'w1471_data;%f\n',reflectancia(1471-349));
        fprintf(fid, 'w1472_data;%f\n',reflectancia(1472-349));
        fprintf(fid, 'w1473_data;%f\n',reflectancia(1473-349));
        fprintf(fid, 'w1474_data;%f\n',reflectancia(1474-349));
        fprintf(fid, 'w1475_data;%f\n',reflectancia(1475-349));
        fprintf(fid, 'w1476_data;%f\n',reflectancia(1476-349));
        fprintf(fid, 'w1477_data;%f\n',reflectancia(1477-349));
        fprintf(fid, 'w1478_data;%f\n',reflectancia(1478-349));
        fprintf(fid, 'w1479_data;%f\n',reflectancia(1479-349));
        fprintf(fid, 'w1480_data;%f\n',reflectancia(1480-349));
        fprintf(fid, 'w1481_data;%f\n',reflectancia(1481-349));
        fprintf(fid, 'w1482_data;%f\n',reflectancia(1482-349));
        fprintf(fid, 'w1483_data;%f\n',reflectancia(1483-349));
        fprintf(fid, 'w1484_data;%f\n',reflectancia(1484-349));
        fprintf(fid, 'w1485_data;%f\n',reflectancia(1485-349));
        fprintf(fid, 'w1486_data;%f\n',reflectancia(1486-349));
        fprintf(fid, 'w1487_data;%f\n',reflectancia(1487-349));
        fprintf(fid, 'w1488_data;%f\n',reflectancia(1488-349));
        fprintf(fid, 'w1489_data;%f\n',reflectancia(1489-349));
        fprintf(fid, 'w1490_data;%f\n',reflectancia(1490-349));
        fprintf(fid, 'w1491_data;%f\n',reflectancia(1491-349));
        fprintf(fid, 'w1492_data;%f\n',reflectancia(1492-349));
        fprintf(fid, 'w1493_data;%f\n',reflectancia(1493-349));
        fprintf(fid, 'w1494_data;%f\n',reflectancia(1494-349));
        fprintf(fid, 'w1495_data;%f\n',reflectancia(1495-349));
        fprintf(fid, 'w1496_data;%f\n',reflectancia(1496-349));
        fprintf(fid, 'w1497_data;%f\n',reflectancia(1497-349));
        fprintf(fid, 'w1498_data;%f\n',reflectancia(1498-349));
        fprintf(fid, 'w1499_data;%f\n',reflectancia(1499-349));
        fprintf(fid, 'w1500_data;%f\n',reflectancia(1500-349));
        fprintf(fid, 'w1501_data;%f\n',reflectancia(1501-349));
        fprintf(fid, 'w1502_data;%f\n',reflectancia(1502-349));
        fprintf(fid, 'w1503_data;%f\n',reflectancia(1503-349));
        fprintf(fid, 'w1504_data;%f\n',reflectancia(1504-349));
        fprintf(fid, 'w1505_data;%f\n',reflectancia(1505-349));
        fprintf(fid, 'w1506_data;%f\n',reflectancia(1506-349));
        fprintf(fid, 'w1507_data;%f\n',reflectancia(1507-349));
        fprintf(fid, 'w1508_data;%f\n',reflectancia(1508-349));
        fprintf(fid, 'w1509_data;%f\n',reflectancia(1509-349));
        fprintf(fid, 'w1510_data;%f\n',reflectancia(1510-349));
        fprintf(fid, 'w1511_data;%f\n',reflectancia(1511-349));
        fprintf(fid, 'w1512_data;%f\n',reflectancia(1512-349));
        fprintf(fid, 'w1513_data;%f\n',reflectancia(1513-349));
        fprintf(fid, 'w1514_data;%f\n',reflectancia(1514-349));
        fprintf(fid, 'w1515_data;%f\n',reflectancia(1515-349));
        fprintf(fid, 'w1516_data;%f\n',reflectancia(1516-349));
        fprintf(fid, 'w1517_data;%f\n',reflectancia(1517-349));
        fprintf(fid, 'w1518_data;%f\n',reflectancia(1518-349));
        fprintf(fid, 'w1519_data;%f\n',reflectancia(1519-349));
        fprintf(fid, 'w1520_data;%f\n',reflectancia(1520-349));
        fprintf(fid, 'w1521_data;%f\n',reflectancia(1521-349));
        fprintf(fid, 'w1522_data;%f\n',reflectancia(1522-349));
        fprintf(fid, 'w1523_data;%f\n',reflectancia(1523-349));
        fprintf(fid, 'w1524_data;%f\n',reflectancia(1524-349));
        fprintf(fid, 'w1525_data;%f\n',reflectancia(1525-349));
        fprintf(fid, 'w1526_data;%f\n',reflectancia(1526-349));
        fprintf(fid, 'w1527_data;%f\n',reflectancia(1527-349));
        fprintf(fid, 'w1528_data;%f\n',reflectancia(1528-349));
        fprintf(fid, 'w1529_data;%f\n',reflectancia(1529-349));
        fprintf(fid, 'w1530_data;%f\n',reflectancia(1530-349));
        fprintf(fid, 'w1531_data;%f\n',reflectancia(1531-349));
        fprintf(fid, 'w1532_data;%f\n',reflectancia(1532-349));
        fprintf(fid, 'w1533_data;%f\n',reflectancia(1533-349));
        fprintf(fid, 'w1534_data;%f\n',reflectancia(1534-349));
        fprintf(fid, 'w1535_data;%f\n',reflectancia(1535-349));
        fprintf(fid, 'w1536_data;%f\n',reflectancia(1536-349));
        fprintf(fid, 'w1537_data;%f\n',reflectancia(1537-349));
        fprintf(fid, 'w1538_data;%f\n',reflectancia(1538-349));
        fprintf(fid, 'w1539_data;%f\n',reflectancia(1539-349));
        fprintf(fid, 'w1540_data;%f\n',reflectancia(1540-349));
        fprintf(fid, 'w1541_data;%f\n',reflectancia(1541-349));
        fprintf(fid, 'w1542_data;%f\n',reflectancia(1542-349));
        fprintf(fid, 'w1543_data;%f\n',reflectancia(1543-349));
        fprintf(fid, 'w1544_data;%f\n',reflectancia(1544-349));
        fprintf(fid, 'w1545_data;%f\n',reflectancia(1545-349));
        fprintf(fid, 'w1546_data;%f\n',reflectancia(1546-349));
        fprintf(fid, 'w1547_data;%f\n',reflectancia(1547-349));
        fprintf(fid, 'w1548_data;%f\n',reflectancia(1548-349));
        fprintf(fid, 'w1549_data;%f\n',reflectancia(1549-349));
        fprintf(fid, 'w1550_data;%f\n',reflectancia(1550-349));
        fprintf(fid, 'w1551_data;%f\n',reflectancia(1551-349));
        fprintf(fid, 'w1552_data;%f\n',reflectancia(1552-349));
        fprintf(fid, 'w1553_data;%f\n',reflectancia(1553-349));
        fprintf(fid, 'w1554_data;%f\n',reflectancia(1554-349));
        fprintf(fid, 'w1555_data;%f\n',reflectancia(1555-349));
        fprintf(fid, 'w1556_data;%f\n',reflectancia(1556-349));
        fprintf(fid, 'w1557_data;%f\n',reflectancia(1557-349));
        fprintf(fid, 'w1558_data;%f\n',reflectancia(1558-349));
        fprintf(fid, 'w1559_data;%f\n',reflectancia(1559-349));
        fprintf(fid, 'w1560_data;%f\n',reflectancia(1560-349));
        fprintf(fid, 'w1561_data;%f\n',reflectancia(1561-349));
        fprintf(fid, 'w1562_data;%f\n',reflectancia(1562-349));
        fprintf(fid, 'w1563_data;%f\n',reflectancia(1563-349));
        fprintf(fid, 'w1564_data;%f\n',reflectancia(1564-349));
        fprintf(fid, 'w1565_data;%f\n',reflectancia(1565-349));
        fprintf(fid, 'w1566_data;%f\n',reflectancia(1566-349));
        fprintf(fid, 'w1567_data;%f\n',reflectancia(1567-349));
        fprintf(fid, 'w1568_data;%f\n',reflectancia(1568-349));
        fprintf(fid, 'w1569_data;%f\n',reflectancia(1569-349));
        fprintf(fid, 'w1570_data;%f\n',reflectancia(1570-349));
        fprintf(fid, 'w1571_data;%f\n',reflectancia(1571-349));
        fprintf(fid, 'w1572_data;%f\n',reflectancia(1572-349));
        fprintf(fid, 'w1573_data;%f\n',reflectancia(1573-349));
        fprintf(fid, 'w1574_data;%f\n',reflectancia(1574-349));
        fprintf(fid, 'w1575_data;%f\n',reflectancia(1575-349));
        fprintf(fid, 'w1576_data;%f\n',reflectancia(1576-349));
        fprintf(fid, 'w1577_data;%f\n',reflectancia(1577-349));
        fprintf(fid, 'w1578_data;%f\n',reflectancia(1578-349));
        fprintf(fid, 'w1579_data;%f\n',reflectancia(1579-349));
        fprintf(fid, 'w1580_data;%f\n',reflectancia(1580-349));
        fprintf(fid, 'w1581_data;%f\n',reflectancia(1581-349));
        fprintf(fid, 'w1582_data;%f\n',reflectancia(1582-349));
        fprintf(fid, 'w1583_data;%f\n',reflectancia(1583-349));
        fprintf(fid, 'w1584_data;%f\n',reflectancia(1584-349));
        fprintf(fid, 'w1585_data;%f\n',reflectancia(1585-349));
        fprintf(fid, 'w1586_data;%f\n',reflectancia(1586-349));
        fprintf(fid, 'w1587_data;%f\n',reflectancia(1587-349));
        fprintf(fid, 'w1588_data;%f\n',reflectancia(1588-349));
        fprintf(fid, 'w1589_data;%f\n',reflectancia(1589-349));
        fprintf(fid, 'w1590_data;%f\n',reflectancia(1590-349));
        fprintf(fid, 'w1591_data;%f\n',reflectancia(1591-349));
        fprintf(fid, 'w1592_data;%f\n',reflectancia(1592-349));
        fprintf(fid, 'w1593_data;%f\n',reflectancia(1593-349));
        fprintf(fid, 'w1594_data;%f\n',reflectancia(1594-349));
        fprintf(fid, 'w1595_data;%f\n',reflectancia(1595-349));
        fprintf(fid, 'w1596_data;%f\n',reflectancia(1596-349));
        fprintf(fid, 'w1597_data;%f\n',reflectancia(1597-349));
        fprintf(fid, 'w1598_data;%f\n',reflectancia(1598-349));
        fprintf(fid, 'w1599_data;%f\n',reflectancia(1599-349));
        fprintf(fid, 'w1600_data;%f\n',reflectancia(1600-349));
        fprintf(fid, 'w1601_data;%f\n',reflectancia(1601-349));
        fprintf(fid, 'w1602_data;%f\n',reflectancia(1602-349));
        fprintf(fid, 'w1603_data;%f\n',reflectancia(1603-349));
        fprintf(fid, 'w1604_data;%f\n',reflectancia(1604-349));
        fprintf(fid, 'w1605_data;%f\n',reflectancia(1605-349));
        fprintf(fid, 'w1606_data;%f\n',reflectancia(1606-349));
        fprintf(fid, 'w1607_data;%f\n',reflectancia(1607-349));
        fprintf(fid, 'w1608_data;%f\n',reflectancia(1608-349));
        fprintf(fid, 'w1609_data;%f\n',reflectancia(1609-349));
        fprintf(fid, 'w1610_data;%f\n',reflectancia(1610-349));
        fprintf(fid, 'w1611_data;%f\n',reflectancia(1611-349));
        fprintf(fid, 'w1612_data;%f\n',reflectancia(1612-349));
        fprintf(fid, 'w1613_data;%f\n',reflectancia(1613-349));
        fprintf(fid, 'w1614_data;%f\n',reflectancia(1614-349));
        fprintf(fid, 'w1615_data;%f\n',reflectancia(1615-349));
        fprintf(fid, 'w1616_data;%f\n',reflectancia(1616-349));
        fprintf(fid, 'w1617_data;%f\n',reflectancia(1617-349));
        fprintf(fid, 'w1618_data;%f\n',reflectancia(1618-349));
        fprintf(fid, 'w1619_data;%f\n',reflectancia(1619-349));
        fprintf(fid, 'w1620_data;%f\n',reflectancia(1620-349));
        fprintf(fid, 'w1621_data;%f\n',reflectancia(1621-349));
        fprintf(fid, 'w1622_data;%f\n',reflectancia(1622-349));
        fprintf(fid, 'w1623_data;%f\n',reflectancia(1623-349));
        fprintf(fid, 'w1624_data;%f\n',reflectancia(1624-349));
        fprintf(fid, 'w1625_data;%f\n',reflectancia(1625-349));
        fprintf(fid, 'w1626_data;%f\n',reflectancia(1626-349));
        fprintf(fid, 'w1627_data;%f\n',reflectancia(1627-349));
        fprintf(fid, 'w1628_data;%f\n',reflectancia(1628-349));
        fprintf(fid, 'w1629_data;%f\n',reflectancia(1629-349));
        fprintf(fid, 'w1630_data;%f\n',reflectancia(1630-349));
        fprintf(fid, 'w1631_data;%f\n',reflectancia(1631-349));
        fprintf(fid, 'w1632_data;%f\n',reflectancia(1632-349));
        fprintf(fid, 'w1633_data;%f\n',reflectancia(1633-349));
        fprintf(fid, 'w1634_data;%f\n',reflectancia(1634-349));
        fprintf(fid, 'w1635_data;%f\n',reflectancia(1635-349));
        fprintf(fid, 'w1636_data;%f\n',reflectancia(1636-349));
        fprintf(fid, 'w1637_data;%f\n',reflectancia(1637-349));
        fprintf(fid, 'w1638_data;%f\n',reflectancia(1638-349));
        fprintf(fid, 'w1639_data;%f\n',reflectancia(1639-349));
        fprintf(fid, 'w1640_data;%f\n',reflectancia(1640-349));
        fprintf(fid, 'w1641_data;%f\n',reflectancia(1641-349));
        fprintf(fid, 'w1642_data;%f\n',reflectancia(1642-349));
        fprintf(fid, 'w1643_data;%f\n',reflectancia(1643-349));
        fprintf(fid, 'w1644_data;%f\n',reflectancia(1644-349));
        fprintf(fid, 'w1645_data;%f\n',reflectancia(1645-349));
        fprintf(fid, 'w1646_data;%f\n',reflectancia(1646-349));
        fprintf(fid, 'w1647_data;%f\n',reflectancia(1647-349));
        fprintf(fid, 'w1648_data;%f\n',reflectancia(1648-349));
        fprintf(fid, 'w1649_data;%f\n',reflectancia(1649-349));
        fprintf(fid, 'w1650_data;%f\n',reflectancia(1650-349));
        fprintf(fid, 'w1651_data;%f\n',reflectancia(1651-349));
        fprintf(fid, 'w1652_data;%f\n',reflectancia(1652-349));
        fprintf(fid, 'w1653_data;%f\n',reflectancia(1653-349));
        fprintf(fid, 'w1654_data;%f\n',reflectancia(1654-349));
        fprintf(fid, 'w1655_data;%f\n',reflectancia(1655-349));
        fprintf(fid, 'w1656_data;%f\n',reflectancia(1656-349));
        fprintf(fid, 'w1657_data;%f\n',reflectancia(1657-349));
        fprintf(fid, 'w1658_data;%f\n',reflectancia(1658-349));
        fprintf(fid, 'w1659_data;%f\n',reflectancia(1659-349));
        fprintf(fid, 'w1660_data;%f\n',reflectancia(1660-349));
        fprintf(fid, 'w1661_data;%f\n',reflectancia(1661-349));
        fprintf(fid, 'w1662_data;%f\n',reflectancia(1662-349));
        fprintf(fid, 'w1663_data;%f\n',reflectancia(1663-349));
        fprintf(fid, 'w1664_data;%f\n',reflectancia(1664-349));
        fprintf(fid, 'w1665_data;%f\n',reflectancia(1665-349));
        fprintf(fid, 'w1666_data;%f\n',reflectancia(1666-349));
        fprintf(fid, 'w1667_data;%f\n',reflectancia(1667-349));
        fprintf(fid, 'w1668_data;%f\n',reflectancia(1668-349));
        fprintf(fid, 'w1669_data;%f\n',reflectancia(1669-349));
        fprintf(fid, 'w1670_data;%f\n',reflectancia(1670-349));
        fprintf(fid, 'w1671_data;%f\n',reflectancia(1671-349));
        fprintf(fid, 'w1672_data;%f\n',reflectancia(1672-349));
        fprintf(fid, 'w1673_data;%f\n',reflectancia(1673-349));
        fprintf(fid, 'w1674_data;%f\n',reflectancia(1674-349));
        fprintf(fid, 'w1675_data;%f\n',reflectancia(1675-349));
        fprintf(fid, 'w1676_data;%f\n',reflectancia(1676-349));
        fprintf(fid, 'w1677_data;%f\n',reflectancia(1677-349));
        fprintf(fid, 'w1678_data;%f\n',reflectancia(1678-349));
        fprintf(fid, 'w1679_data;%f\n',reflectancia(1679-349));
        fprintf(fid, 'w1680_data;%f\n',reflectancia(1680-349));
        fprintf(fid, 'w1681_data;%f\n',reflectancia(1681-349));
        fprintf(fid, 'w1682_data;%f\n',reflectancia(1682-349));
        fprintf(fid, 'w1683_data;%f\n',reflectancia(1683-349));
        fprintf(fid, 'w1684_data;%f\n',reflectancia(1684-349));
        fprintf(fid, 'w1685_data;%f\n',reflectancia(1685-349));
        fprintf(fid, 'w1686_data;%f\n',reflectancia(1686-349));
        fprintf(fid, 'w1687_data;%f\n',reflectancia(1687-349));
        fprintf(fid, 'w1688_data;%f\n',reflectancia(1688-349));
        fprintf(fid, 'w1689_data;%f\n',reflectancia(1689-349));
        fprintf(fid, 'w1690_data;%f\n',reflectancia(1690-349));
        fprintf(fid, 'w1691_data;%f\n',reflectancia(1691-349));
        fprintf(fid, 'w1692_data;%f\n',reflectancia(1692-349));
        fprintf(fid, 'w1693_data;%f\n',reflectancia(1693-349));
        fprintf(fid, 'w1694_data;%f\n',reflectancia(1694-349));
        fprintf(fid, 'w1695_data;%f\n',reflectancia(1695-349));
        fprintf(fid, 'w1696_data;%f\n',reflectancia(1696-349));
        fprintf(fid, 'w1697_data;%f\n',reflectancia(1697-349));
        fprintf(fid, 'w1698_data;%f\n',reflectancia(1698-349));
        fprintf(fid, 'w1699_data;%f\n',reflectancia(1699-349));
        fprintf(fid, 'w1700_data;%f\n',reflectancia(1700-349));
        fprintf(fid, 'w1701_data;%f\n',reflectancia(1701-349));
        fprintf(fid, 'w1702_data;%f\n',reflectancia(1702-349));
        fprintf(fid, 'w1703_data;%f\n',reflectancia(1703-349));
        fprintf(fid, 'w1704_data;%f\n',reflectancia(1704-349));
        fprintf(fid, 'w1705_data;%f\n',reflectancia(1705-349));
        fprintf(fid, 'w1706_data;%f\n',reflectancia(1706-349));
        fprintf(fid, 'w1707_data;%f\n',reflectancia(1707-349));
        fprintf(fid, 'w1708_data;%f\n',reflectancia(1708-349));
        fprintf(fid, 'w1709_data;%f\n',reflectancia(1709-349));
        fprintf(fid, 'w1710_data;%f\n',reflectancia(1710-349));
        fprintf(fid, 'w1711_data;%f\n',reflectancia(1711-349));
        fprintf(fid, 'w1712_data;%f\n',reflectancia(1712-349));
        fprintf(fid, 'w1713_data;%f\n',reflectancia(1713-349));
        fprintf(fid, 'w1714_data;%f\n',reflectancia(1714-349));
        fprintf(fid, 'w1715_data;%f\n',reflectancia(1715-349));
        fprintf(fid, 'w1716_data;%f\n',reflectancia(1716-349));
        fprintf(fid, 'w1717_data;%f\n',reflectancia(1717-349));
        fprintf(fid, 'w1718_data;%f\n',reflectancia(1718-349));
        fprintf(fid, 'w1719_data;%f\n',reflectancia(1719-349));
        fprintf(fid, 'w1720_data;%f\n',reflectancia(1720-349));
        fprintf(fid, 'w1721_data;%f\n',reflectancia(1721-349));
        fprintf(fid, 'w1722_data;%f\n',reflectancia(1722-349));
        fprintf(fid, 'w1723_data;%f\n',reflectancia(1723-349));
        fprintf(fid, 'w1724_data;%f\n',reflectancia(1724-349));
        fprintf(fid, 'w1725_data;%f\n',reflectancia(1725-349));
        fprintf(fid, 'w1726_data;%f\n',reflectancia(1726-349));
        fprintf(fid, 'w1727_data;%f\n',reflectancia(1727-349));
        fprintf(fid, 'w1728_data;%f\n',reflectancia(1728-349));
        fprintf(fid, 'w1729_data;%f\n',reflectancia(1729-349));
        fprintf(fid, 'w1730_data;%f\n',reflectancia(1730-349));
        fprintf(fid, 'w1731_data;%f\n',reflectancia(1731-349));
        fprintf(fid, 'w1732_data;%f\n',reflectancia(1732-349));
        fprintf(fid, 'w1733_data;%f\n',reflectancia(1733-349));
        fprintf(fid, 'w1734_data;%f\n',reflectancia(1734-349));
        fprintf(fid, 'w1735_data;%f\n',reflectancia(1735-349));
        fprintf(fid, 'w1736_data;%f\n',reflectancia(1736-349));
        fprintf(fid, 'w1737_data;%f\n',reflectancia(1737-349));
        fprintf(fid, 'w1738_data;%f\n',reflectancia(1738-349));
        fprintf(fid, 'w1739_data;%f\n',reflectancia(1739-349));
        fprintf(fid, 'w1740_data;%f\n',reflectancia(1740-349));
        fprintf(fid, 'w1741_data;%f\n',reflectancia(1741-349));
        fprintf(fid, 'w1742_data;%f\n',reflectancia(1742-349));
        fprintf(fid, 'w1743_data;%f\n',reflectancia(1743-349));
        fprintf(fid, 'w1744_data;%f\n',reflectancia(1744-349));
        fprintf(fid, 'w1745_data;%f\n',reflectancia(1745-349));
        fprintf(fid, 'w1746_data;%f\n',reflectancia(1746-349));
        fprintf(fid, 'w1747_data;%f\n',reflectancia(1747-349));
        fprintf(fid, 'w1748_data;%f\n',reflectancia(1748-349));
        fprintf(fid, 'w1749_data;%f\n',reflectancia(1749-349));
        fprintf(fid, 'w1750_data;%f\n',reflectancia(1750-349));
        fprintf(fid, 'w1751_data;%f\n',reflectancia(1751-349));
        fprintf(fid, 'w1752_data;%f\n',reflectancia(1752-349));
        fprintf(fid, 'w1753_data;%f\n',reflectancia(1753-349));
        fprintf(fid, 'w1754_data;%f\n',reflectancia(1754-349));
        fprintf(fid, 'w1755_data;%f\n',reflectancia(1755-349));
        fprintf(fid, 'w1756_data;%f\n',reflectancia(1756-349));
        fprintf(fid, 'w1757_data;%f\n',reflectancia(1757-349));
        fprintf(fid, 'w1758_data;%f\n',reflectancia(1758-349));
        fprintf(fid, 'w1759_data;%f\n',reflectancia(1759-349));
        fprintf(fid, 'w1760_data;%f\n',reflectancia(1760-349));
        fprintf(fid, 'w1761_data;%f\n',reflectancia(1761-349));
        fprintf(fid, 'w1762_data;%f\n',reflectancia(1762-349));
        fprintf(fid, 'w1763_data;%f\n',reflectancia(1763-349));
        fprintf(fid, 'w1764_data;%f\n',reflectancia(1764-349));
        fprintf(fid, 'w1765_data;%f\n',reflectancia(1765-349));
        fprintf(fid, 'w1766_data;%f\n',reflectancia(1766-349));
        fprintf(fid, 'w1767_data;%f\n',reflectancia(1767-349));
        fprintf(fid, 'w1768_data;%f\n',reflectancia(1768-349));
        fprintf(fid, 'w1769_data;%f\n',reflectancia(1769-349));
        fprintf(fid, 'w1770_data;%f\n',reflectancia(1770-349));
        fprintf(fid, 'w1771_data;%f\n',reflectancia(1771-349));
        fprintf(fid, 'w1772_data;%f\n',reflectancia(1772-349));
        fprintf(fid, 'w1773_data;%f\n',reflectancia(1773-349));
        fprintf(fid, 'w1774_data;%f\n',reflectancia(1774-349));
        fprintf(fid, 'w1775_data;%f\n',reflectancia(1775-349));
        fprintf(fid, 'w1776_data;%f\n',reflectancia(1776-349));
        fprintf(fid, 'w1777_data;%f\n',reflectancia(1777-349));
        fprintf(fid, 'w1778_data;%f\n',reflectancia(1778-349));
        fprintf(fid, 'w1779_data;%f\n',reflectancia(1779-349));
        fprintf(fid, 'w1780_data;%f\n',reflectancia(1780-349));
        fprintf(fid, 'w1781_data;%f\n',reflectancia(1781-349));
        fprintf(fid, 'w1782_data;%f\n',reflectancia(1782-349));
        fprintf(fid, 'w1783_data;%f\n',reflectancia(1783-349));
        fprintf(fid, 'w1784_data;%f\n',reflectancia(1784-349));
        fprintf(fid, 'w1785_data;%f\n',reflectancia(1785-349));
        fprintf(fid, 'w1786_data;%f\n',reflectancia(1786-349));
        fprintf(fid, 'w1787_data;%f\n',reflectancia(1787-349));
        fprintf(fid, 'w1788_data;%f\n',reflectancia(1788-349));
        fprintf(fid, 'w1789_data;%f\n',reflectancia(1789-349));
        fprintf(fid, 'w1790_data;%f\n',reflectancia(1790-349));
        fprintf(fid, 'w1791_data;%f\n',reflectancia(1791-349));
        fprintf(fid, 'w1792_data;%f\n',reflectancia(1792-349));
        fprintf(fid, 'w1793_data;%f\n',reflectancia(1793-349));
        fprintf(fid, 'w1794_data;%f\n',reflectancia(1794-349));
        fprintf(fid, 'w1795_data;%f\n',reflectancia(1795-349));
        fprintf(fid, 'w1796_data;%f\n',reflectancia(1796-349));
        fprintf(fid, 'w1797_data;%f\n',reflectancia(1797-349));
        fprintf(fid, 'w1798_data;%f\n',reflectancia(1798-349));
        fprintf(fid, 'w1799_data;%f\n',reflectancia(1799-349));
        fprintf(fid, 'w1800_data;%f\n',reflectancia(1800-349));
        fprintf(fid, 'w1801_data;%f\n',reflectancia(1801-349));
        fprintf(fid, 'w1802_data;%f\n',reflectancia(1802-349));
        fprintf(fid, 'w1803_data;%f\n',reflectancia(1803-349));
        fprintf(fid, 'w1804_data;%f\n',reflectancia(1804-349));
        fprintf(fid, 'w1805_data;%f\n',reflectancia(1805-349));
        fprintf(fid, 'w1806_data;%f\n',reflectancia(1806-349));
        fprintf(fid, 'w1807_data;%f\n',reflectancia(1807-349));
        fprintf(fid, 'w1808_data;%f\n',reflectancia(1808-349));
        fprintf(fid, 'w1809_data;%f\n',reflectancia(1809-349));
        fprintf(fid, 'w1810_data;%f\n',reflectancia(1810-349));
        fprintf(fid, 'w1811_data;%f\n',reflectancia(1811-349));
        fprintf(fid, 'w1812_data;%f\n',reflectancia(1812-349));
        fprintf(fid, 'w1813_data;%f\n',reflectancia(1813-349));
        fprintf(fid, 'w1814_data;%f\n',reflectancia(1814-349));
        fprintf(fid, 'w1815_data;%f\n',reflectancia(1815-349));
        fprintf(fid, 'w1816_data;%f\n',reflectancia(1816-349));
        fprintf(fid, 'w1817_data;%f\n',reflectancia(1817-349));
        fprintf(fid, 'w1818_data;%f\n',reflectancia(1818-349));
        fprintf(fid, 'w1819_data;%f\n',reflectancia(1819-349));
        fprintf(fid, 'w1820_data;%f\n',reflectancia(1820-349));
        fprintf(fid, 'w1821_data;%f\n',reflectancia(1821-349));
        fprintf(fid, 'w1822_data;%f\n',reflectancia(1822-349));
        fprintf(fid, 'w1823_data;%f\n',reflectancia(1823-349));
        fprintf(fid, 'w1824_data;%f\n',reflectancia(1824-349));
        fprintf(fid, 'w1825_data;%f\n',reflectancia(1825-349));
        fprintf(fid, 'w1826_data;%f\n',reflectancia(1826-349));
        fprintf(fid, 'w1827_data;%f\n',reflectancia(1827-349));
        fprintf(fid, 'w1828_data;%f\n',reflectancia(1828-349));
        fprintf(fid, 'w1829_data;%f\n',reflectancia(1829-349));
        fprintf(fid, 'w1830_data;%f\n',reflectancia(1830-349));
        fprintf(fid, 'w1831_data;%f\n',reflectancia(1831-349));
        fprintf(fid, 'w1832_data;%f\n',reflectancia(1832-349));
        fprintf(fid, 'w1833_data;%f\n',reflectancia(1833-349));
        fprintf(fid, 'w1834_data;%f\n',reflectancia(1834-349));
        fprintf(fid, 'w1835_data;%f\n',reflectancia(1835-349));
        fprintf(fid, 'w1836_data;%f\n',reflectancia(1836-349));
        fprintf(fid, 'w1837_data;%f\n',reflectancia(1837-349));
        fprintf(fid, 'w1838_data;%f\n',reflectancia(1838-349));
        fprintf(fid, 'w1839_data;%f\n',reflectancia(1839-349));
        fprintf(fid, 'w1840_data;%f\n',reflectancia(1840-349));
        fprintf(fid, 'w1841_data;%f\n',reflectancia(1841-349));
        fprintf(fid, 'w1842_data;%f\n',reflectancia(1842-349));
        fprintf(fid, 'w1843_data;%f\n',reflectancia(1843-349));
        fprintf(fid, 'w1844_data;%f\n',reflectancia(1844-349));
        fprintf(fid, 'w1845_data;%f\n',reflectancia(1845-349));
        fprintf(fid, 'w1846_data;%f\n',reflectancia(1846-349));
        fprintf(fid, 'w1847_data;%f\n',reflectancia(1847-349));
        fprintf(fid, 'w1848_data;%f\n',reflectancia(1848-349));
        fprintf(fid, 'w1849_data;%f\n',reflectancia(1849-349));
        fprintf(fid, 'w1850_data;%f\n',reflectancia(1850-349));
        fprintf(fid, 'w1851_data;%f\n',reflectancia(1851-349));
        fprintf(fid, 'w1852_data;%f\n',reflectancia(1852-349));
        fprintf(fid, 'w1853_data;%f\n',reflectancia(1853-349));
        fprintf(fid, 'w1854_data;%f\n',reflectancia(1854-349));
        fprintf(fid, 'w1855_data;%f\n',reflectancia(1855-349));
        fprintf(fid, 'w1856_data;%f\n',reflectancia(1856-349));
        fprintf(fid, 'w1857_data;%f\n',reflectancia(1857-349));
        fprintf(fid, 'w1858_data;%f\n',reflectancia(1858-349));
        fprintf(fid, 'w1859_data;%f\n',reflectancia(1859-349));
        fprintf(fid, 'w1860_data;%f\n',reflectancia(1860-349));
        fprintf(fid, 'w1861_data;%f\n',reflectancia(1861-349));
        fprintf(fid, 'w1862_data;%f\n',reflectancia(1862-349));
        fprintf(fid, 'w1863_data;%f\n',reflectancia(1863-349));
        fprintf(fid, 'w1864_data;%f\n',reflectancia(1864-349));
        fprintf(fid, 'w1865_data;%f\n',reflectancia(1865-349));
        fprintf(fid, 'w1866_data;%f\n',reflectancia(1866-349));
        fprintf(fid, 'w1867_data;%f\n',reflectancia(1867-349));
        fprintf(fid, 'w1868_data;%f\n',reflectancia(1868-349));
        fprintf(fid, 'w1869_data;%f\n',reflectancia(1869-349));
        fprintf(fid, 'w1870_data;%f\n',reflectancia(1870-349));
        fprintf(fid, 'w1871_data;%f\n',reflectancia(1871-349));
        fprintf(fid, 'w1872_data;%f\n',reflectancia(1872-349));
        fprintf(fid, 'w1873_data;%f\n',reflectancia(1873-349));
        fprintf(fid, 'w1874_data;%f\n',reflectancia(1874-349));
        fprintf(fid, 'w1875_data;%f\n',reflectancia(1875-349));
        fprintf(fid, 'w1876_data;%f\n',reflectancia(1876-349));
        fprintf(fid, 'w1877_data;%f\n',reflectancia(1877-349));
        fprintf(fid, 'w1878_data;%f\n',reflectancia(1878-349));
        fprintf(fid, 'w1879_data;%f\n',reflectancia(1879-349));
        fprintf(fid, 'w1880_data;%f\n',reflectancia(1880-349));
        fprintf(fid, 'w1881_data;%f\n',reflectancia(1881-349));
        fprintf(fid, 'w1882_data;%f\n',reflectancia(1882-349));
        fprintf(fid, 'w1883_data;%f\n',reflectancia(1883-349));
        fprintf(fid, 'w1884_data;%f\n',reflectancia(1884-349));
        fprintf(fid, 'w1885_data;%f\n',reflectancia(1885-349));
        fprintf(fid, 'w1886_data;%f\n',reflectancia(1886-349));
        fprintf(fid, 'w1887_data;%f\n',reflectancia(1887-349));
        fprintf(fid, 'w1888_data;%f\n',reflectancia(1888-349));
        fprintf(fid, 'w1889_data;%f\n',reflectancia(1889-349));
        fprintf(fid, 'w1890_data;%f\n',reflectancia(1890-349));
        fprintf(fid, 'w1891_data;%f\n',reflectancia(1891-349));
        fprintf(fid, 'w1892_data;%f\n',reflectancia(1892-349));
        fprintf(fid, 'w1893_data;%f\n',reflectancia(1893-349));
        fprintf(fid, 'w1894_data;%f\n',reflectancia(1894-349));
        fprintf(fid, 'w1895_data;%f\n',reflectancia(1895-349));
        fprintf(fid, 'w1896_data;%f\n',reflectancia(1896-349));
        fprintf(fid, 'w1897_data;%f\n',reflectancia(1897-349));
        fprintf(fid, 'w1898_data;%f\n',reflectancia(1898-349));
        fprintf(fid, 'w1899_data;%f\n',reflectancia(1899-349));
        fprintf(fid, 'w1900_data;%f\n',reflectancia(1900-349));
        fprintf(fid, 'w1901_data;%f\n',reflectancia(1901-349));
        fprintf(fid, 'w1902_data;%f\n',reflectancia(1902-349));
        fprintf(fid, 'w1903_data;%f\n',reflectancia(1903-349));
        fprintf(fid, 'w1904_data;%f\n',reflectancia(1904-349));
        fprintf(fid, 'w1905_data;%f\n',reflectancia(1905-349));
        fprintf(fid, 'w1906_data;%f\n',reflectancia(1906-349));
        fprintf(fid, 'w1907_data;%f\n',reflectancia(1907-349));
        fprintf(fid, 'w1908_data;%f\n',reflectancia(1908-349));
        fprintf(fid, 'w1909_data;%f\n',reflectancia(1909-349));
        fprintf(fid, 'w1910_data;%f\n',reflectancia(1910-349));
        fprintf(fid, 'w1911_data;%f\n',reflectancia(1911-349));
        fprintf(fid, 'w1912_data;%f\n',reflectancia(1912-349));
        fprintf(fid, 'w1913_data;%f\n',reflectancia(1913-349));
        fprintf(fid, 'w1914_data;%f\n',reflectancia(1914-349));
        fprintf(fid, 'w1915_data;%f\n',reflectancia(1915-349));
        fprintf(fid, 'w1916_data;%f\n',reflectancia(1916-349));
        fprintf(fid, 'w1917_data;%f\n',reflectancia(1917-349));
        fprintf(fid, 'w1918_data;%f\n',reflectancia(1918-349));
        fprintf(fid, 'w1919_data;%f\n',reflectancia(1919-349));
        fprintf(fid, 'w1920_data;%f\n',reflectancia(1920-349));
        fprintf(fid, 'w1921_data;%f\n',reflectancia(1921-349));
        fprintf(fid, 'w1922_data;%f\n',reflectancia(1922-349));
        fprintf(fid, 'w1923_data;%f\n',reflectancia(1923-349));
        fprintf(fid, 'w1924_data;%f\n',reflectancia(1924-349));
        fprintf(fid, 'w1925_data;%f\n',reflectancia(1925-349));
        fprintf(fid, 'w1926_data;%f\n',reflectancia(1926-349));
        fprintf(fid, 'w1927_data;%f\n',reflectancia(1927-349));
        fprintf(fid, 'w1928_data;%f\n',reflectancia(1928-349));
        fprintf(fid, 'w1929_data;%f\n',reflectancia(1929-349));
        fprintf(fid, 'w1930_data;%f\n',reflectancia(1930-349));
        fprintf(fid, 'w1931_data;%f\n',reflectancia(1931-349));
        fprintf(fid, 'w1932_data;%f\n',reflectancia(1932-349));
        fprintf(fid, 'w1933_data;%f\n',reflectancia(1933-349));
        fprintf(fid, 'w1934_data;%f\n',reflectancia(1934-349));
        fprintf(fid, 'w1935_data;%f\n',reflectancia(1935-349));
        fprintf(fid, 'w1936_data;%f\n',reflectancia(1936-349));
        fprintf(fid, 'w1937_data;%f\n',reflectancia(1937-349));
        fprintf(fid, 'w1938_data;%f\n',reflectancia(1938-349));
        fprintf(fid, 'w1939_data;%f\n',reflectancia(1939-349));
        fprintf(fid, 'w1940_data;%f\n',reflectancia(1940-349));
        fprintf(fid, 'w1941_data;%f\n',reflectancia(1941-349));
        fprintf(fid, 'w1942_data;%f\n',reflectancia(1942-349));
        fprintf(fid, 'w1943_data;%f\n',reflectancia(1943-349));
        fprintf(fid, 'w1944_data;%f\n',reflectancia(1944-349));
        fprintf(fid, 'w1945_data;%f\n',reflectancia(1945-349));
        fprintf(fid, 'w1946_data;%f\n',reflectancia(1946-349));
        fprintf(fid, 'w1947_data;%f\n',reflectancia(1947-349));
        fprintf(fid, 'w1948_data;%f\n',reflectancia(1948-349));
        fprintf(fid, 'w1949_data;%f\n',reflectancia(1949-349));
        fprintf(fid, 'w1950_data;%f\n',reflectancia(1950-349));
        fprintf(fid, 'w1951_data;%f\n',reflectancia(1951-349));
        fprintf(fid, 'w1952_data;%f\n',reflectancia(1952-349));
        fprintf(fid, 'w1953_data;%f\n',reflectancia(1953-349));
        fprintf(fid, 'w1954_data;%f\n',reflectancia(1954-349));
        fprintf(fid, 'w1955_data;%f\n',reflectancia(1955-349));
        fprintf(fid, 'w1956_data;%f\n',reflectancia(1956-349));
        fprintf(fid, 'w1957_data;%f\n',reflectancia(1957-349));
        fprintf(fid, 'w1958_data;%f\n',reflectancia(1958-349));
        fprintf(fid, 'w1959_data;%f\n',reflectancia(1959-349));
        fprintf(fid, 'w1960_data;%f\n',reflectancia(1960-349));
        fprintf(fid, 'w1961_data;%f\n',reflectancia(1961-349));
        fprintf(fid, 'w1962_data;%f\n',reflectancia(1962-349));
        fprintf(fid, 'w1963_data;%f\n',reflectancia(1963-349));
        fprintf(fid, 'w1964_data;%f\n',reflectancia(1964-349));
        fprintf(fid, 'w1965_data;%f\n',reflectancia(1965-349));
        fprintf(fid, 'w1966_data;%f\n',reflectancia(1966-349));
        fprintf(fid, 'w1967_data;%f\n',reflectancia(1967-349));
        fprintf(fid, 'w1968_data;%f\n',reflectancia(1968-349));
        fprintf(fid, 'w1969_data;%f\n',reflectancia(1969-349));
        fprintf(fid, 'w1970_data;%f\n',reflectancia(1970-349));
        fprintf(fid, 'w1971_data;%f\n',reflectancia(1971-349));
        fprintf(fid, 'w1972_data;%f\n',reflectancia(1972-349));
        fprintf(fid, 'w1973_data;%f\n',reflectancia(1973-349));
        fprintf(fid, 'w1974_data;%f\n',reflectancia(1974-349));
        fprintf(fid, 'w1975_data;%f\n',reflectancia(1975-349));
        fprintf(fid, 'w1976_data;%f\n',reflectancia(1976-349));
        fprintf(fid, 'w1977_data;%f\n',reflectancia(1977-349));
        fprintf(fid, 'w1978_data;%f\n',reflectancia(1978-349));
        fprintf(fid, 'w1979_data;%f\n',reflectancia(1979-349));
        fprintf(fid, 'w1980_data;%f\n',reflectancia(1980-349));
        fprintf(fid, 'w1981_data;%f\n',reflectancia(1981-349));
        fprintf(fid, 'w1982_data;%f\n',reflectancia(1982-349));
        fprintf(fid, 'w1983_data;%f\n',reflectancia(1983-349));
        fprintf(fid, 'w1984_data;%f\n',reflectancia(1984-349));
        fprintf(fid, 'w1985_data;%f\n',reflectancia(1985-349));
        fprintf(fid, 'w1986_data;%f\n',reflectancia(1986-349));
        fprintf(fid, 'w1987_data;%f\n',reflectancia(1987-349));
        fprintf(fid, 'w1988_data;%f\n',reflectancia(1988-349));
        fprintf(fid, 'w1989_data;%f\n',reflectancia(1989-349));
        fprintf(fid, 'w1990_data;%f\n',reflectancia(1990-349));
        fprintf(fid, 'w1991_data;%f\n',reflectancia(1991-349));
        fprintf(fid, 'w1992_data;%f\n',reflectancia(1992-349));
        fprintf(fid, 'w1993_data;%f\n',reflectancia(1993-349));
        fprintf(fid, 'w1994_data;%f\n',reflectancia(1994-349));
        fprintf(fid, 'w1995_data;%f\n',reflectancia(1995-349));
        fprintf(fid, 'w1996_data;%f\n',reflectancia(1996-349));
        fprintf(fid, 'w1997_data;%f\n',reflectancia(1997-349));
        fprintf(fid, 'w1998_data;%f\n',reflectancia(1998-349));
        fprintf(fid, 'w1999_data;%f\n',reflectancia(1999-349));
        fprintf(fid, 'w2000_data;%f\n',reflectancia(2000-349));
        fprintf(fid, 'w2001_data;%f\n',reflectancia(2001-349));
        fprintf(fid, 'w2002_data;%f\n',reflectancia(2002-349));
        fprintf(fid, 'w2003_data;%f\n',reflectancia(2003-349));
        fprintf(fid, 'w2004_data;%f\n',reflectancia(2004-349));
        fprintf(fid, 'w2005_data;%f\n',reflectancia(2005-349));
        fprintf(fid, 'w2006_data;%f\n',reflectancia(2006-349));
        fprintf(fid, 'w2007_data;%f\n',reflectancia(2007-349));
        fprintf(fid, 'w2008_data;%f\n',reflectancia(2008-349));
        fprintf(fid, 'w2009_data;%f\n',reflectancia(2009-349));
        fprintf(fid, 'w2010_data;%f\n',reflectancia(2010-349));
        fprintf(fid, 'w2011_data;%f\n',reflectancia(2011-349));
        fprintf(fid, 'w2012_data;%f\n',reflectancia(2012-349));
        fprintf(fid, 'w2013_data;%f\n',reflectancia(2013-349));
        fprintf(fid, 'w2014_data;%f\n',reflectancia(2014-349));
        fprintf(fid, 'w2015_data;%f\n',reflectancia(2015-349));
        fprintf(fid, 'w2016_data;%f\n',reflectancia(2016-349));
        fprintf(fid, 'w2017_data;%f\n',reflectancia(2017-349));
        fprintf(fid, 'w2018_data;%f\n',reflectancia(2018-349));
        fprintf(fid, 'w2019_data;%f\n',reflectancia(2019-349));
        fprintf(fid, 'w2020_data;%f\n',reflectancia(2020-349));
        fprintf(fid, 'w2021_data;%f\n',reflectancia(2021-349));
        fprintf(fid, 'w2022_data;%f\n',reflectancia(2022-349));
        fprintf(fid, 'w2023_data;%f\n',reflectancia(2023-349));
        fprintf(fid, 'w2024_data;%f\n',reflectancia(2024-349));
        fprintf(fid, 'w2025_data;%f\n',reflectancia(2025-349));
        fprintf(fid, 'w2026_data;%f\n',reflectancia(2026-349));
        fprintf(fid, 'w2027_data;%f\n',reflectancia(2027-349));
        fprintf(fid, 'w2028_data;%f\n',reflectancia(2028-349));
        fprintf(fid, 'w2029_data;%f\n',reflectancia(2029-349));
        fprintf(fid, 'w2030_data;%f\n',reflectancia(2030-349));
        fprintf(fid, 'w2031_data;%f\n',reflectancia(2031-349));
        fprintf(fid, 'w2032_data;%f\n',reflectancia(2032-349));
        fprintf(fid, 'w2033_data;%f\n',reflectancia(2033-349));
        fprintf(fid, 'w2034_data;%f\n',reflectancia(2034-349));
        fprintf(fid, 'w2035_data;%f\n',reflectancia(2035-349));
        fprintf(fid, 'w2036_data;%f\n',reflectancia(2036-349));
        fprintf(fid, 'w2037_data;%f\n',reflectancia(2037-349));
        fprintf(fid, 'w2038_data;%f\n',reflectancia(2038-349));
        fprintf(fid, 'w2039_data;%f\n',reflectancia(2039-349));
        fprintf(fid, 'w2040_data;%f\n',reflectancia(2040-349));
        fprintf(fid, 'w2041_data;%f\n',reflectancia(2041-349));
        fprintf(fid, 'w2042_data;%f\n',reflectancia(2042-349));
        fprintf(fid, 'w2043_data;%f\n',reflectancia(2043-349));
        fprintf(fid, 'w2044_data;%f\n',reflectancia(2044-349));
        fprintf(fid, 'w2045_data;%f\n',reflectancia(2045-349));
        fprintf(fid, 'w2046_data;%f\n',reflectancia(2046-349));
        fprintf(fid, 'w2047_data;%f\n',reflectancia(2047-349));
        fprintf(fid, 'w2048_data;%f\n',reflectancia(2048-349));
        fprintf(fid, 'w2049_data;%f\n',reflectancia(2049-349));
        fprintf(fid, 'w2050_data;%f\n',reflectancia(2050-349));
        fprintf(fid, 'w2051_data;%f\n',reflectancia(2051-349));
        fprintf(fid, 'w2052_data;%f\n',reflectancia(2052-349));
        fprintf(fid, 'w2053_data;%f\n',reflectancia(2053-349));
        fprintf(fid, 'w2054_data;%f\n',reflectancia(2054-349));
        fprintf(fid, 'w2055_data;%f\n',reflectancia(2055-349));
        fprintf(fid, 'w2056_data;%f\n',reflectancia(2056-349));
        fprintf(fid, 'w2057_data;%f\n',reflectancia(2057-349));
        fprintf(fid, 'w2058_data;%f\n',reflectancia(2058-349));
        fprintf(fid, 'w2059_data;%f\n',reflectancia(2059-349));
        fprintf(fid, 'w2060_data;%f\n',reflectancia(2060-349));
        fprintf(fid, 'w2061_data;%f\n',reflectancia(2061-349));
        fprintf(fid, 'w2062_data;%f\n',reflectancia(2062-349));
        fprintf(fid, 'w2063_data;%f\n',reflectancia(2063-349));
        fprintf(fid, 'w2064_data;%f\n',reflectancia(2064-349));
        fprintf(fid, 'w2065_data;%f\n',reflectancia(2065-349));
        fprintf(fid, 'w2066_data;%f\n',reflectancia(2066-349));
        fprintf(fid, 'w2067_data;%f\n',reflectancia(2067-349));
        fprintf(fid, 'w2068_data;%f\n',reflectancia(2068-349));
        fprintf(fid, 'w2069_data;%f\n',reflectancia(2069-349));
        fprintf(fid, 'w2070_data;%f\n',reflectancia(2070-349));
        fprintf(fid, 'w2071_data;%f\n',reflectancia(2071-349));
        fprintf(fid, 'w2072_data;%f\n',reflectancia(2072-349));
        fprintf(fid, 'w2073_data;%f\n',reflectancia(2073-349));
        fprintf(fid, 'w2074_data;%f\n',reflectancia(2074-349));
        fprintf(fid, 'w2075_data;%f\n',reflectancia(2075-349));
        fprintf(fid, 'w2076_data;%f\n',reflectancia(2076-349));
        fprintf(fid, 'w2077_data;%f\n',reflectancia(2077-349));
        fprintf(fid, 'w2078_data;%f\n',reflectancia(2078-349));
        fprintf(fid, 'w2079_data;%f\n',reflectancia(2079-349));
        fprintf(fid, 'w2080_data;%f\n',reflectancia(2080-349));
        fprintf(fid, 'w2081_data;%f\n',reflectancia(2081-349));
        fprintf(fid, 'w2082_data;%f\n',reflectancia(2082-349));
        fprintf(fid, 'w2083_data;%f\n',reflectancia(2083-349));
        fprintf(fid, 'w2084_data;%f\n',reflectancia(2084-349));
        fprintf(fid, 'w2085_data;%f\n',reflectancia(2085-349));
        fprintf(fid, 'w2086_data;%f\n',reflectancia(2086-349));
        fprintf(fid, 'w2087_data;%f\n',reflectancia(2087-349));
        fprintf(fid, 'w2088_data;%f\n',reflectancia(2088-349));
        fprintf(fid, 'w2089_data;%f\n',reflectancia(2089-349));
        fprintf(fid, 'w2090_data;%f\n',reflectancia(2090-349));
        fprintf(fid, 'w2091_data;%f\n',reflectancia(2091-349));
        fprintf(fid, 'w2092_data;%f\n',reflectancia(2092-349));
        fprintf(fid, 'w2093_data;%f\n',reflectancia(2093-349));
        fprintf(fid, 'w2094_data;%f\n',reflectancia(2094-349));
        fprintf(fid, 'w2095_data;%f\n',reflectancia(2095-349));
        fprintf(fid, 'w2096_data;%f\n',reflectancia(2096-349));
        fprintf(fid, 'w2097_data;%f\n',reflectancia(2097-349));
        fprintf(fid, 'w2098_data;%f\n',reflectancia(2098-349));
        fprintf(fid, 'w2099_data;%f\n',reflectancia(2099-349));
        fprintf(fid, 'w2100_data;%f\n',reflectancia(2100-349));
        fprintf(fid, 'w2101_data;%f\n',reflectancia(2101-349));
        fprintf(fid, 'w2102_data;%f\n',reflectancia(2102-349));
        fprintf(fid, 'w2103_data;%f\n',reflectancia(2103-349));
        fprintf(fid, 'w2104_data;%f\n',reflectancia(2104-349));
        fprintf(fid, 'w2105_data;%f\n',reflectancia(2105-349));
        fprintf(fid, 'w2106_data;%f\n',reflectancia(2106-349));
        fprintf(fid, 'w2107_data;%f\n',reflectancia(2107-349));
        fprintf(fid, 'w2108_data;%f\n',reflectancia(2108-349));
        fprintf(fid, 'w2109_data;%f\n',reflectancia(2109-349));
        fprintf(fid, 'w2110_data;%f\n',reflectancia(2110-349));
        fprintf(fid, 'w2111_data;%f\n',reflectancia(2111-349));
        fprintf(fid, 'w2112_data;%f\n',reflectancia(2112-349));
        fprintf(fid, 'w2113_data;%f\n',reflectancia(2113-349));
        fprintf(fid, 'w2114_data;%f\n',reflectancia(2114-349));
        fprintf(fid, 'w2115_data;%f\n',reflectancia(2115-349));
        fprintf(fid, 'w2116_data;%f\n',reflectancia(2116-349));
        fprintf(fid, 'w2117_data;%f\n',reflectancia(2117-349));
        fprintf(fid, 'w2118_data;%f\n',reflectancia(2118-349));
        fprintf(fid, 'w2119_data;%f\n',reflectancia(2119-349));
        fprintf(fid, 'w2120_data;%f\n',reflectancia(2120-349));
        fprintf(fid, 'w2121_data;%f\n',reflectancia(2121-349));
        fprintf(fid, 'w2122_data;%f\n',reflectancia(2122-349));
        fprintf(fid, 'w2123_data;%f\n',reflectancia(2123-349));
        fprintf(fid, 'w2124_data;%f\n',reflectancia(2124-349));
        fprintf(fid, 'w2125_data;%f\n',reflectancia(2125-349));
        fprintf(fid, 'w2126_data;%f\n',reflectancia(2126-349));
        fprintf(fid, 'w2127_data;%f\n',reflectancia(2127-349));
        fprintf(fid, 'w2128_data;%f\n',reflectancia(2128-349));
        fprintf(fid, 'w2129_data;%f\n',reflectancia(2129-349));
        fprintf(fid, 'w2130_data;%f\n',reflectancia(2130-349));
        fprintf(fid, 'w2131_data;%f\n',reflectancia(2131-349));
        fprintf(fid, 'w2132_data;%f\n',reflectancia(2132-349));
        fprintf(fid, 'w2133_data;%f\n',reflectancia(2133-349));
        fprintf(fid, 'w2134_data;%f\n',reflectancia(2134-349));
        fprintf(fid, 'w2135_data;%f\n',reflectancia(2135-349));
        fprintf(fid, 'w2136_data;%f\n',reflectancia(2136-349));
        fprintf(fid, 'w2137_data;%f\n',reflectancia(2137-349));
        fprintf(fid, 'w2138_data;%f\n',reflectancia(2138-349));
        fprintf(fid, 'w2139_data;%f\n',reflectancia(2139-349));
        fprintf(fid, 'w2140_data;%f\n',reflectancia(2140-349));
        fprintf(fid, 'w2141_data;%f\n',reflectancia(2141-349));
        fprintf(fid, 'w2142_data;%f\n',reflectancia(2142-349));
        fprintf(fid, 'w2143_data;%f\n',reflectancia(2143-349));
        fprintf(fid, 'w2144_data;%f\n',reflectancia(2144-349));
        fprintf(fid, 'w2145_data;%f\n',reflectancia(2145-349));
        fprintf(fid, 'w2146_data;%f\n',reflectancia(2146-349));
        fprintf(fid, 'w2147_data;%f\n',reflectancia(2147-349));
        fprintf(fid, 'w2148_data;%f\n',reflectancia(2148-349));
        fprintf(fid, 'w2149_data;%f\n',reflectancia(2149-349));
        fprintf(fid, 'w2150_data;%f\n',reflectancia(2150-349));
        fprintf(fid, 'w2151_data;%f\n',reflectancia(2151-349));
        fprintf(fid, 'w2152_data;%f\n',reflectancia(2152-349));
        fprintf(fid, 'w2153_data;%f\n',reflectancia(2153-349));
        fprintf(fid, 'w2154_data;%f\n',reflectancia(2154-349));
        fprintf(fid, 'w2155_data;%f\n',reflectancia(2155-349));
        fprintf(fid, 'w2156_data;%f\n',reflectancia(2156-349));
        fprintf(fid, 'w2157_data;%f\n',reflectancia(2157-349));
        fprintf(fid, 'w2158_data;%f\n',reflectancia(2158-349));
        fprintf(fid, 'w2159_data;%f\n',reflectancia(2159-349));
        fprintf(fid, 'w2160_data;%f\n',reflectancia(2160-349));
        fprintf(fid, 'w2161_data;%f\n',reflectancia(2161-349));
        fprintf(fid, 'w2162_data;%f\n',reflectancia(2162-349));
        fprintf(fid, 'w2163_data;%f\n',reflectancia(2163-349));
        fprintf(fid, 'w2164_data;%f\n',reflectancia(2164-349));
        fprintf(fid, 'w2165_data;%f\n',reflectancia(2165-349));
        fprintf(fid, 'w2166_data;%f\n',reflectancia(2166-349));
        fprintf(fid, 'w2167_data;%f\n',reflectancia(2167-349));
        fprintf(fid, 'w2168_data;%f\n',reflectancia(2168-349));
        fprintf(fid, 'w2169_data;%f\n',reflectancia(2169-349));
        fprintf(fid, 'w2170_data;%f\n',reflectancia(2170-349));
        fprintf(fid, 'w2171_data;%f\n',reflectancia(2171-349));
        fprintf(fid, 'w2172_data;%f\n',reflectancia(2172-349));
        fprintf(fid, 'w2173_data;%f\n',reflectancia(2173-349));
        fprintf(fid, 'w2174_data;%f\n',reflectancia(2174-349));
        fprintf(fid, 'w2175_data;%f\n',reflectancia(2175-349));
        fprintf(fid, 'w2176_data;%f\n',reflectancia(2176-349));
        fprintf(fid, 'w2177_data;%f\n',reflectancia(2177-349));
        fprintf(fid, 'w2178_data;%f\n',reflectancia(2178-349));
        fprintf(fid, 'w2179_data;%f\n',reflectancia(2179-349));
        fprintf(fid, 'w2180_data;%f\n',reflectancia(2180-349));
        fprintf(fid, 'w2181_data;%f\n',reflectancia(2181-349));
        fprintf(fid, 'w2182_data;%f\n',reflectancia(2182-349));
        fprintf(fid, 'w2183_data;%f\n',reflectancia(2183-349));
        fprintf(fid, 'w2184_data;%f\n',reflectancia(2184-349));
        fprintf(fid, 'w2185_data;%f\n',reflectancia(2185-349));
        fprintf(fid, 'w2186_data;%f\n',reflectancia(2186-349));
        fprintf(fid, 'w2187_data;%f\n',reflectancia(2187-349));
        fprintf(fid, 'w2188_data;%f\n',reflectancia(2188-349));
        fprintf(fid, 'w2189_data;%f\n',reflectancia(2189-349));
        fprintf(fid, 'w2190_data;%f\n',reflectancia(2190-349));
        fprintf(fid, 'w2191_data;%f\n',reflectancia(2191-349));
        fprintf(fid, 'w2192_data;%f\n',reflectancia(2192-349));
        fprintf(fid, 'w2193_data;%f\n',reflectancia(2193-349));
        fprintf(fid, 'w2194_data;%f\n',reflectancia(2194-349));
        fprintf(fid, 'w2195_data;%f\n',reflectancia(2195-349));
        fprintf(fid, 'w2196_data;%f\n',reflectancia(2196-349));
        fprintf(fid, 'w2197_data;%f\n',reflectancia(2197-349));
        fprintf(fid, 'w2198_data;%f\n',reflectancia(2198-349));
        fprintf(fid, 'w2199_data;%f\n',reflectancia(2199-349));
        fprintf(fid, 'w2200_data;%f\n',reflectancia(2200-349));
        fprintf(fid, 'w2201_data;%f\n',reflectancia(2201-349));
        fprintf(fid, 'w2202_data;%f\n',reflectancia(2202-349));
        fprintf(fid, 'w2203_data;%f\n',reflectancia(2203-349));
        fprintf(fid, 'w2204_data;%f\n',reflectancia(2204-349));
        fprintf(fid, 'w2205_data;%f\n',reflectancia(2205-349));
        fprintf(fid, 'w2206_data;%f\n',reflectancia(2206-349));
        fprintf(fid, 'w2207_data;%f\n',reflectancia(2207-349));
        fprintf(fid, 'w2208_data;%f\n',reflectancia(2208-349));
        fprintf(fid, 'w2209_data;%f\n',reflectancia(2209-349));
        fprintf(fid, 'w2210_data;%f\n',reflectancia(2210-349));
        fprintf(fid, 'w2211_data;%f\n',reflectancia(2211-349));
        fprintf(fid, 'w2212_data;%f\n',reflectancia(2212-349));
        fprintf(fid, 'w2213_data;%f\n',reflectancia(2213-349));
        fprintf(fid, 'w2214_data;%f\n',reflectancia(2214-349));
        fprintf(fid, 'w2215_data;%f\n',reflectancia(2215-349));
        fprintf(fid, 'w2216_data;%f\n',reflectancia(2216-349));
        fprintf(fid, 'w2217_data;%f\n',reflectancia(2217-349));
        fprintf(fid, 'w2218_data;%f\n',reflectancia(2218-349));
        fprintf(fid, 'w2219_data;%f\n',reflectancia(2219-349));
        fprintf(fid, 'w2220_data;%f\n',reflectancia(2220-349));
        fprintf(fid, 'w2221_data;%f\n',reflectancia(2221-349));
        fprintf(fid, 'w2222_data;%f\n',reflectancia(2222-349));
        fprintf(fid, 'w2223_data;%f\n',reflectancia(2223-349));
        fprintf(fid, 'w2224_data;%f\n',reflectancia(2224-349));
        fprintf(fid, 'w2225_data;%f\n',reflectancia(2225-349));
        fprintf(fid, 'w2226_data;%f\n',reflectancia(2226-349));
        fprintf(fid, 'w2227_data;%f\n',reflectancia(2227-349));
        fprintf(fid, 'w2228_data;%f\n',reflectancia(2228-349));
        fprintf(fid, 'w2229_data;%f\n',reflectancia(2229-349));
        fprintf(fid, 'w2230_data;%f\n',reflectancia(2230-349));
        fprintf(fid, 'w2231_data;%f\n',reflectancia(2231-349));
        fprintf(fid, 'w2232_data;%f\n',reflectancia(2232-349));
        fprintf(fid, 'w2233_data;%f\n',reflectancia(2233-349));
        fprintf(fid, 'w2234_data;%f\n',reflectancia(2234-349));
        fprintf(fid, 'w2235_data;%f\n',reflectancia(2235-349));
        fprintf(fid, 'w2236_data;%f\n',reflectancia(2236-349));
        fprintf(fid, 'w2237_data;%f\n',reflectancia(2237-349));
        fprintf(fid, 'w2238_data;%f\n',reflectancia(2238-349));
        fprintf(fid, 'w2239_data;%f\n',reflectancia(2239-349));
        fprintf(fid, 'w2240_data;%f\n',reflectancia(2240-349));
        fprintf(fid, 'w2241_data;%f\n',reflectancia(2241-349));
        fprintf(fid, 'w2242_data;%f\n',reflectancia(2242-349));
        fprintf(fid, 'w2243_data;%f\n',reflectancia(2243-349));
        fprintf(fid, 'w2244_data;%f\n',reflectancia(2244-349));
        fprintf(fid, 'w2245_data;%f\n',reflectancia(2245-349));
        fprintf(fid, 'w2246_data;%f\n',reflectancia(2246-349));
        fprintf(fid, 'w2247_data;%f\n',reflectancia(2247-349));
        fprintf(fid, 'w2248_data;%f\n',reflectancia(2248-349));
        fprintf(fid, 'w2249_data;%f\n',reflectancia(2249-349));
        fprintf(fid, 'w2250_data;%f\n',reflectancia(2250-349));
        fprintf(fid, 'w2251_data;%f\n',reflectancia(2251-349));
        fprintf(fid, 'w2252_data;%f\n',reflectancia(2252-349));
        fprintf(fid, 'w2253_data;%f\n',reflectancia(2253-349));
        fprintf(fid, 'w2254_data;%f\n',reflectancia(2254-349));
        fprintf(fid, 'w2255_data;%f\n',reflectancia(2255-349));
        fprintf(fid, 'w2256_data;%f\n',reflectancia(2256-349));
        fprintf(fid, 'w2257_data;%f\n',reflectancia(2257-349));
        fprintf(fid, 'w2258_data;%f\n',reflectancia(2258-349));
        fprintf(fid, 'w2259_data;%f\n',reflectancia(2259-349));
        fprintf(fid, 'w2260_data;%f\n',reflectancia(2260-349));
        fprintf(fid, 'w2261_data;%f\n',reflectancia(2261-349));
        fprintf(fid, 'w2262_data;%f\n',reflectancia(2262-349));
        fprintf(fid, 'w2263_data;%f\n',reflectancia(2263-349));
        fprintf(fid, 'w2264_data;%f\n',reflectancia(2264-349));
        fprintf(fid, 'w2265_data;%f\n',reflectancia(2265-349));
        fprintf(fid, 'w2266_data;%f\n',reflectancia(2266-349));
        fprintf(fid, 'w2267_data;%f\n',reflectancia(2267-349));
        fprintf(fid, 'w2268_data;%f\n',reflectancia(2268-349));
        fprintf(fid, 'w2269_data;%f\n',reflectancia(2269-349));
        fprintf(fid, 'w2270_data;%f\n',reflectancia(2270-349));
        fprintf(fid, 'w2271_data;%f\n',reflectancia(2271-349));
        fprintf(fid, 'w2272_data;%f\n',reflectancia(2272-349));
        fprintf(fid, 'w2273_data;%f\n',reflectancia(2273-349));
        fprintf(fid, 'w2274_data;%f\n',reflectancia(2274-349));
        fprintf(fid, 'w2275_data;%f\n',reflectancia(2275-349));
        fprintf(fid, 'w2276_data;%f\n',reflectancia(2276-349));
        fprintf(fid, 'w2277_data;%f\n',reflectancia(2277-349));
        fprintf(fid, 'w2278_data;%f\n',reflectancia(2278-349));
        fprintf(fid, 'w2279_data;%f\n',reflectancia(2279-349));
        fprintf(fid, 'w2280_data;%f\n',reflectancia(2280-349));
        fprintf(fid, 'w2281_data;%f\n',reflectancia(2281-349));
        fprintf(fid, 'w2282_data;%f\n',reflectancia(2282-349));
        fprintf(fid, 'w2283_data;%f\n',reflectancia(2283-349));
        fprintf(fid, 'w2284_data;%f\n',reflectancia(2284-349));
        fprintf(fid, 'w2285_data;%f\n',reflectancia(2285-349));
        fprintf(fid, 'w2286_data;%f\n',reflectancia(2286-349));
        fprintf(fid, 'w2287_data;%f\n',reflectancia(2287-349));
        fprintf(fid, 'w2288_data;%f\n',reflectancia(2288-349));
        fprintf(fid, 'w2289_data;%f\n',reflectancia(2289-349));
        fprintf(fid, 'w2290_data;%f\n',reflectancia(2290-349));
        fprintf(fid, 'w2291_data;%f\n',reflectancia(2291-349));
        fprintf(fid, 'w2292_data;%f\n',reflectancia(2292-349));
        fprintf(fid, 'w2293_data;%f\n',reflectancia(2293-349));
        fprintf(fid, 'w2294_data;%f\n',reflectancia(2294-349));
        fprintf(fid, 'w2295_data;%f\n',reflectancia(2295-349));
        fprintf(fid, 'w2296_data;%f\n',reflectancia(2296-349));
        fprintf(fid, 'w2297_data;%f\n',reflectancia(2297-349));
        fprintf(fid, 'w2298_data;%f\n',reflectancia(2298-349));
        fprintf(fid, 'w2299_data;%f\n',reflectancia(2299-349));
        fprintf(fid, 'w2300_data;%f\n',reflectancia(2300-349));
        fprintf(fid, 'w2301_data;%f\n',reflectancia(2301-349));
        fprintf(fid, 'w2302_data;%f\n',reflectancia(2302-349));
        fprintf(fid, 'w2303_data;%f\n',reflectancia(2303-349));
        fprintf(fid, 'w2304_data;%f\n',reflectancia(2304-349));
        fprintf(fid, 'w2305_data;%f\n',reflectancia(2305-349));
        fprintf(fid, 'w2306_data;%f\n',reflectancia(2306-349));
        fprintf(fid, 'w2307_data;%f\n',reflectancia(2307-349));
        fprintf(fid, 'w2308_data;%f\n',reflectancia(2308-349));
        fprintf(fid, 'w2309_data;%f\n',reflectancia(2309-349));
        fprintf(fid, 'w2310_data;%f\n',reflectancia(2310-349));
        fprintf(fid, 'w2311_data;%f\n',reflectancia(2311-349));
        fprintf(fid, 'w2312_data;%f\n',reflectancia(2312-349));
        fprintf(fid, 'w2313_data;%f\n',reflectancia(2313-349));
        fprintf(fid, 'w2314_data;%f\n',reflectancia(2314-349));
        fprintf(fid, 'w2315_data;%f\n',reflectancia(2315-349));
        fprintf(fid, 'w2316_data;%f\n',reflectancia(2316-349));
        fprintf(fid, 'w2317_data;%f\n',reflectancia(2317-349));
        fprintf(fid, 'w2318_data;%f\n',reflectancia(2318-349));
        fprintf(fid, 'w2319_data;%f\n',reflectancia(2319-349));
        fprintf(fid, 'w2320_data;%f\n',reflectancia(2320-349));
        fprintf(fid, 'w2321_data;%f\n',reflectancia(2321-349));
        fprintf(fid, 'w2322_data;%f\n',reflectancia(2322-349));
        fprintf(fid, 'w2323_data;%f\n',reflectancia(2323-349));
        fprintf(fid, 'w2324_data;%f\n',reflectancia(2324-349));
        fprintf(fid, 'w2325_data;%f\n',reflectancia(2325-349));
        fprintf(fid, 'w2326_data;%f\n',reflectancia(2326-349));
        fprintf(fid, 'w2327_data;%f\n',reflectancia(2327-349));
        fprintf(fid, 'w2328_data;%f\n',reflectancia(2328-349));
        fprintf(fid, 'w2329_data;%f\n',reflectancia(2329-349));
        fprintf(fid, 'w2330_data;%f\n',reflectancia(2330-349));
        fprintf(fid, 'w2331_data;%f\n',reflectancia(2331-349));
        fprintf(fid, 'w2332_data;%f\n',reflectancia(2332-349));
        fprintf(fid, 'w2333_data;%f\n',reflectancia(2333-349));
        fprintf(fid, 'w2334_data;%f\n',reflectancia(2334-349));
        fprintf(fid, 'w2335_data;%f\n',reflectancia(2335-349));
        fprintf(fid, 'w2336_data;%f\n',reflectancia(2336-349));
        fprintf(fid, 'w2337_data;%f\n',reflectancia(2337-349));
        fprintf(fid, 'w2338_data;%f\n',reflectancia(2338-349));
        fprintf(fid, 'w2339_data;%f\n',reflectancia(2339-349));
        fprintf(fid, 'w2340_data;%f\n',reflectancia(2340-349));
        fprintf(fid, 'w2341_data;%f\n',reflectancia(2341-349));
        fprintf(fid, 'w2342_data;%f\n',reflectancia(2342-349));
        fprintf(fid, 'w2343_data;%f\n',reflectancia(2343-349));
        fprintf(fid, 'w2344_data;%f\n',reflectancia(2344-349));
        fprintf(fid, 'w2345_data;%f\n',reflectancia(2345-349));
        fprintf(fid, 'w2346_data;%f\n',reflectancia(2346-349));
        fprintf(fid, 'w2347_data;%f\n',reflectancia(2347-349));
        fprintf(fid, 'w2348_data;%f\n',reflectancia(2348-349));
        fprintf(fid, 'w2349_data;%f\n',reflectancia(2349-349));
        fprintf(fid, 'w2350_data;%f\n',reflectancia(2350-349));
        fprintf(fid, 'w2351_data;%f\n',reflectancia(2351-349));
        fprintf(fid, 'w2352_data;%f\n',reflectancia(2352-349));
        fprintf(fid, 'w2353_data;%f\n',reflectancia(2353-349));
        fprintf(fid, 'w2354_data;%f\n',reflectancia(2354-349));
        fprintf(fid, 'w2355_data;%f\n',reflectancia(2355-349));
        fprintf(fid, 'w2356_data;%f\n',reflectancia(2356-349));
        fprintf(fid, 'w2357_data;%f\n',reflectancia(2357-349));
        fprintf(fid, 'w2358_data;%f\n',reflectancia(2358-349));
        fprintf(fid, 'w2359_data;%f\n',reflectancia(2359-349));
        fprintf(fid, 'w2360_data;%f\n',reflectancia(2360-349));
        fprintf(fid, 'w2361_data;%f\n',reflectancia(2361-349));
        fprintf(fid, 'w2362_data;%f\n',reflectancia(2362-349));
        fprintf(fid, 'w2363_data;%f\n',reflectancia(2363-349));
        fprintf(fid, 'w2364_data;%f\n',reflectancia(2364-349));
        fprintf(fid, 'w2365_data;%f\n',reflectancia(2365-349));
        fprintf(fid, 'w2366_data;%f\n',reflectancia(2366-349));
        fprintf(fid, 'w2367_data;%f\n',reflectancia(2367-349));
        fprintf(fid, 'w2368_data;%f\n',reflectancia(2368-349));
        fprintf(fid, 'w2369_data;%f\n',reflectancia(2369-349));
        fprintf(fid, 'w2370_data;%f\n',reflectancia(2370-349));
        fprintf(fid, 'w2371_data;%f\n',reflectancia(2371-349));
        fprintf(fid, 'w2372_data;%f\n',reflectancia(2372-349));
        fprintf(fid, 'w2373_data;%f\n',reflectancia(2373-349));
        fprintf(fid, 'w2374_data;%f\n',reflectancia(2374-349));
        fprintf(fid, 'w2375_data;%f\n',reflectancia(2375-349));
        fprintf(fid, 'w2376_data;%f\n',reflectancia(2376-349));
        fprintf(fid, 'w2377_data;%f\n',reflectancia(2377-349));
        fprintf(fid, 'w2378_data;%f\n',reflectancia(2378-349));
        fprintf(fid, 'w2379_data;%f\n',reflectancia(2379-349));
        fprintf(fid, 'w2380_data;%f\n',reflectancia(2380-349));
        fprintf(fid, 'w2381_data;%f\n',reflectancia(2381-349));
        fprintf(fid, 'w2382_data;%f\n',reflectancia(2382-349));
        fprintf(fid, 'w2383_data;%f\n',reflectancia(2383-349));
        fprintf(fid, 'w2384_data;%f\n',reflectancia(2384-349));
        fprintf(fid, 'w2385_data;%f\n',reflectancia(2385-349));
        fprintf(fid, 'w2386_data;%f\n',reflectancia(2386-349));
        fprintf(fid, 'w2387_data;%f\n',reflectancia(2387-349));
        fprintf(fid, 'w2388_data;%f\n',reflectancia(2388-349));
        fprintf(fid, 'w2389_data;%f\n',reflectancia(2389-349));
        fprintf(fid, 'w2390_data;%f\n',reflectancia(2390-349));
        fprintf(fid, 'w2391_data;%f\n',reflectancia(2391-349));
        fprintf(fid, 'w2392_data;%f\n',reflectancia(2392-349));
        fprintf(fid, 'w2393_data;%f\n',reflectancia(2393-349));
        fprintf(fid, 'w2394_data;%f\n',reflectancia(2394-349));
        fprintf(fid, 'w2395_data;%f\n',reflectancia(2395-349));
        fprintf(fid, 'w2396_data;%f\n',reflectancia(2396-349));
        fprintf(fid, 'w2397_data;%f\n',reflectancia(2397-349));
        fprintf(fid, 'w2398_data;%f\n',reflectancia(2398-349));
        fprintf(fid, 'w2399_data;%f\n',reflectancia(2399-349));
        fprintf(fid, 'w2400_data;%f\n',reflectancia(2400-349));
        fprintf(fid, 'w2401_data;%f\n',reflectancia(2401-349));
        fprintf(fid, 'w2402_data;%f\n',reflectancia(2402-349));
        fprintf(fid, 'w2403_data;%f\n',reflectancia(2403-349));
        fprintf(fid, 'w2404_data;%f\n',reflectancia(2404-349));
        fprintf(fid, 'w2405_data;%f\n',reflectancia(2405-349));
        fprintf(fid, 'w2406_data;%f\n',reflectancia(2406-349));
        fprintf(fid, 'w2407_data;%f\n',reflectancia(2407-349));
        fprintf(fid, 'w2408_data;%f\n',reflectancia(2408-349));
        fprintf(fid, 'w2409_data;%f\n',reflectancia(2409-349));
        fprintf(fid, 'w2410_data;%f\n',reflectancia(2410-349));
        fprintf(fid, 'w2411_data;%f\n',reflectancia(2411-349));
        fprintf(fid, 'w2412_data;%f\n',reflectancia(2412-349));
        fprintf(fid, 'w2413_data;%f\n',reflectancia(2413-349));
        fprintf(fid, 'w2414_data;%f\n',reflectancia(2414-349));
        fprintf(fid, 'w2415_data;%f\n',reflectancia(2415-349));
        fprintf(fid, 'w2416_data;%f\n',reflectancia(2416-349));
        fprintf(fid, 'w2417_data;%f\n',reflectancia(2417-349));
        fprintf(fid, 'w2418_data;%f\n',reflectancia(2418-349));
        fprintf(fid, 'w2419_data;%f\n',reflectancia(2419-349));
        fprintf(fid, 'w2420_data;%f\n',reflectancia(2420-349));
        fprintf(fid, 'w2421_data;%f\n',reflectancia(2421-349));
        fprintf(fid, 'w2422_data;%f\n',reflectancia(2422-349));
        fprintf(fid, 'w2423_data;%f\n',reflectancia(2423-349));
        fprintf(fid, 'w2424_data;%f\n',reflectancia(2424-349));
        fprintf(fid, 'w2425_data;%f\n',reflectancia(2425-349));
        fprintf(fid, 'w2426_data;%f\n',reflectancia(2426-349));
        fprintf(fid, 'w2427_data;%f\n',reflectancia(2427-349));
        fprintf(fid, 'w2428_data;%f\n',reflectancia(2428-349));
        fprintf(fid, 'w2429_data;%f\n',reflectancia(2429-349));
        fprintf(fid, 'w2430_data;%f\n',reflectancia(2430-349));
        fprintf(fid, 'w2431_data;%f\n',reflectancia(2431-349));
        fprintf(fid, 'w2432_data;%f\n',reflectancia(2432-349));
        fprintf(fid, 'w2433_data;%f\n',reflectancia(2433-349));
        fprintf(fid, 'w2434_data;%f\n',reflectancia(2434-349));
        fprintf(fid, 'w2435_data;%f\n',reflectancia(2435-349));
        fprintf(fid, 'w2436_data;%f\n',reflectancia(2436-349));
        fprintf(fid, 'w2437_data;%f\n',reflectancia(2437-349));
        fprintf(fid, 'w2438_data;%f\n',reflectancia(2438-349));
        fprintf(fid, 'w2439_data;%f\n',reflectancia(2439-349));
        fprintf(fid, 'w2440_data;%f\n',reflectancia(2440-349));
        fprintf(fid, 'w2441_data;%f\n',reflectancia(2441-349));
        fprintf(fid, 'w2442_data;%f\n',reflectancia(2442-349));
        fprintf(fid, 'w2443_data;%f\n',reflectancia(2443-349));
        fprintf(fid, 'w2444_data;%f\n',reflectancia(2444-349));
        fprintf(fid, 'w2445_data;%f\n',reflectancia(2445-349));
        fprintf(fid, 'w2446_data;%f\n',reflectancia(2446-349));
        fprintf(fid, 'w2447_data;%f\n',reflectancia(2447-349));
        fprintf(fid, 'w2448_data;%f\n',reflectancia(2448-349));
        fprintf(fid, 'w2449_data;%f\n',reflectancia(2449-349));
        fprintf(fid, 'w2450_data;%f\n',reflectancia(2450-349));
        fprintf(fid, 'w2451_data;%f\n',reflectancia(2451-349));
        fprintf(fid, 'w2452_data;%f\n',reflectancia(2452-349));
        fprintf(fid, 'w2453_data;%f\n',reflectancia(2453-349));
        fprintf(fid, 'w2454_data;%f\n',reflectancia(2454-349));
        fprintf(fid, 'w2455_data;%f\n',reflectancia(2455-349));
        fprintf(fid, 'w2456_data;%f\n',reflectancia(2456-349));
        fprintf(fid, 'w2457_data;%f\n',reflectancia(2457-349));
        fprintf(fid, 'w2458_data;%f\n',reflectancia(2458-349));
        fprintf(fid, 'w2459_data;%f\n',reflectancia(2459-349));
        fprintf(fid, 'w2460_data;%f\n',reflectancia(2460-349));
        fprintf(fid, 'w2461_data;%f\n',reflectancia(2461-349));
        fprintf(fid, 'w2462_data;%f\n',reflectancia(2462-349));
        fprintf(fid, 'w2463_data;%f\n',reflectancia(2463-349));
        fprintf(fid, 'w2464_data;%f\n',reflectancia(2464-349));
        fprintf(fid, 'w2465_data;%f\n',reflectancia(2465-349));
        fprintf(fid, 'w2466_data;%f\n',reflectancia(2466-349));
        fprintf(fid, 'w2467_data;%f\n',reflectancia(2467-349));
        fprintf(fid, 'w2468_data;%f\n',reflectancia(2468-349));
        fprintf(fid, 'w2469_data;%f\n',reflectancia(2469-349));
        fprintf(fid, 'w2470_data;%f\n',reflectancia(2470-349));
        fprintf(fid, 'w2471_data;%f\n',reflectancia(2471-349));
        fprintf(fid, 'w2472_data;%f\n',reflectancia(2472-349));
        fprintf(fid, 'w2473_data;%f\n',reflectancia(2473-349));
        fprintf(fid, 'w2474_data;%f\n',reflectancia(2474-349));
        fprintf(fid, 'w2475_data;%f\n',reflectancia(2475-349));
        fprintf(fid, 'w2476_data;%f\n',reflectancia(2476-349));
        fprintf(fid, 'w2477_data;%f\n',reflectancia(2477-349));
        fprintf(fid, 'w2478_data;%f\n',reflectancia(2478-349));
        fprintf(fid, 'w2479_data;%f\n',reflectancia(2479-349));
        fprintf(fid, 'w2480_data;%f\n',reflectancia(2480-349));
        fprintf(fid, 'w2481_data;%f\n',reflectancia(2481-349));
        fprintf(fid, 'w2482_data;%f\n',reflectancia(2482-349));
        fprintf(fid, 'w2483_data;%f\n',reflectancia(2483-349));
        fprintf(fid, 'w2484_data;%f\n',reflectancia(2484-349));
        fprintf(fid, 'w2485_data;%f\n',reflectancia(2485-349));
        fprintf(fid, 'w2486_data;%f\n',reflectancia(2486-349));
        fprintf(fid, 'w2487_data;%f\n',reflectancia(2487-349));
        fprintf(fid, 'w2488_data;%f\n',reflectancia(2488-349));
        fprintf(fid, 'w2489_data;%f\n',reflectancia(2489-349));
        fprintf(fid, 'w2490_data;%f\n',reflectancia(2490-349));
        fprintf(fid, 'w2491_data;%f\n',reflectancia(2491-349));
        fprintf(fid, 'w2492_data;%f\n',reflectancia(2492-349));
        fprintf(fid, 'w2493_data;%f\n',reflectancia(2493-349));
        fprintf(fid, 'w2494_data;%f\n',reflectancia(2494-349));
        fprintf(fid, 'w2495_data;%f\n',reflectancia(2495-349));
        fprintf(fid, 'w2496_data;%f\n',reflectancia(2496-349));
        fprintf(fid, 'w2497_data;%f\n',reflectancia(2497-349));
        fprintf(fid, 'w2498_data;%f\n',reflectancia(2498-349));
        fprintf(fid, 'w2499_data;%f\n',reflectancia(2499-349));
        fprintf(fid, 'w2500_data;%f\n',reflectancia(2500-349));
        fclose(fid);
        clc;
        clear;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %FIN
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        end

    function [] = exportarIndices(fileNameIndice, indicesMap)
        fid= fopen( fileNameIndice,'w');
        fprintf(fid, 'ARI;%f\n',indicesMap('ARI'));
        fprintf(fid, 'AI;%f\n',indicesMap('AI'));
        fprintf(fid, 'BI;%f\n',indicesMap('BI'));
        fprintf(fid, 'BGI1;%f\n',indicesMap('BGI1'));
        fprintf(fid, 'BGI2;%f\n',indicesMap('BGI2'));
        fprintf(fid, 'BRI1;%f\n',indicesMap('BRI1'));
        fprintf(fid, 'BRI2;%f\n',indicesMap('BRI2'));
        fprintf(fid, 'CaI;%f\n',indicesMap('CaI'));
        fprintf(fid, 'CWMI1;%f\n',indicesMap('CWMI1'));
        fprintf(fid, 'CWMI2;%f\n',indicesMap('CWMI2'));
        fprintf(fid, 'CWMI3;%f\n',indicesMap('CWMI3'));
        fprintf(fid, 'Ctr1;%f\n',indicesMap('Ctr1'));
        fprintf(fid, 'Ctr2;%f\n',indicesMap('Ctr2'));
        fprintf(fid, 'Ctr3;%f\n',indicesMap('Ctr3'));
        fprintf(fid, 'Ctr4;%f\n',indicesMap('Ctr4'));
        fprintf(fid, 'Ctr5;%f\n',indicesMap('Ctr5'));
        fprintf(fid, 'CuI;%f\n',indicesMap('CuI'));
        fprintf(fid, 'DSSI1;%f\n',indicesMap('DSSI1'));
        fprintf(fid, 'DSSI2;%f\n',indicesMap('DSSI2'));
        fprintf(fid, 'Datt1;%f\n',indicesMap('Datt1'));
        fprintf(fid, 'Datt2;%f\n',indicesMap('Datt2'));
        fprintf(fid, 'Datt3;%f\n',indicesMap('Datt3'));
        fprintf(fid, 'Datt4;%f\n',indicesMap('Datt4'));
        fprintf(fid, 'Datt5;%f\n',indicesMap('Datt5'));
        fprintf(fid, 'Datt6;%f\n',indicesMap('Datt6'));
        fprintf(fid, 'Datt7;%f\n',indicesMap('Datt7'));
        fprintf(fid, 'DLAI;%f\n',indicesMap('DLAI'));
        fprintf(fid, 'DD1;%f\n',indicesMap('DD1'));
        fprintf(fid, 'DD2;%f\n',indicesMap('DD2'));
        fprintf(fid, 'EVI1;%f\n',indicesMap('EVI1'));
        fprintf(fid, 'EVI2;%f\n',indicesMap('EVI2'));
        fprintf(fid, 'GM1;%f\n',indicesMap('GM1'));
        fprintf(fid, 'GM2;%f\n',indicesMap('GM2'));
        fprintf(fid, 'GrM;%f\n',indicesMap('GrM'));
        fprintf(fid, 'GRI;%f\n',indicesMap('GRI'));
        fprintf(fid, 'GI;%f\n',indicesMap('GI'));
        fprintf(fid, 'HREI1;%f\n',indicesMap('HREI1'));
        fprintf(fid, 'HREI2;%f\n',indicesMap('HREI2'));
        fprintf(fid, 'HWMI;%f\n',indicesMap('HWMI'));
        fprintf(fid, 'MCARIOSAVI;%f\n',indicesMap('MCARIOSAVI'));
        fprintf(fid, 'MTCI1;%f\n',indicesMap('MTCI1'));
        fprintf(fid, 'MTCI2;%f\n',indicesMap('MTCI2'));
        fprintf(fid, 'MTCI3;%f\n',indicesMap('MTCI3'));
        fprintf(fid, 'mCRI1;%f\n',indicesMap('mCRI1'));
        fprintf(fid, 'mCRI2;%f\n',indicesMap('mCRI2'));
        fprintf(fid, 'MCARI1;%f\n',indicesMap('MCARI1'));
        fprintf(fid, 'MCARI2;%f\n',indicesMap('MCARI2'));
        fprintf(fid, 'MCARI3;%f\n',indicesMap('MCARI3'));
        fprintf(fid, 'mNDVI1;%f\n',indicesMap('mNDVI1'));
        fprintf(fid, 'mNDVI2;%f\n',indicesMap('mNDVI2'));
        fprintf(fid, 'mSR1;%f\n',indicesMap('mSR1'));
        fprintf(fid, 'mSR2;%f\n',indicesMap('mSR2'));
        fprintf(fid, 'mSR3;%f\n',indicesMap('mSR3'));
        fprintf(fid, 'mSR4;%f\n',indicesMap('mSR4'));
        fprintf(fid, 'mSR5;%f\n',indicesMap('mSR5'));
        fprintf(fid, 'MSAVI1;%f\n',indicesMap('MSAVI1'));
        fprintf(fid, 'MSAVI2;%f\n',indicesMap('MSAVI2'));
        fprintf(fid, 'MTVI1;%f\n',indicesMap('MTVI1'));
        fprintf(fid, 'MTVI2;%f\n',indicesMap('MTVI2'));
        fprintf(fid, 'MVSR;%f\n',indicesMap('MVSR'));
        fprintf(fid, 'MSI1;%f\n',indicesMap('MSI1'));
        fprintf(fid, 'MSI2;%f\n',indicesMap('MSI2'));
        fprintf(fid, 'MSI3;%f\n',indicesMap('MSI3'));
        fprintf(fid, 'MSI4;%f\n',indicesMap('MSI4'));
        fprintf(fid, 'NBNDVI;%f\n',indicesMap('NBNDVI'));
        fprintf(fid, 'NRI1;%f\n',indicesMap('NRI1'));
        fprintf(fid, 'NRI2;%f\n',indicesMap('NRI2'));
        fprintf(fid, 'NDCI;%f\n',indicesMap('NDCI'));
        fprintf(fid, 'NDg_b;%f\n',indicesMap('NDg_b'));
        fprintf(fid, 'NDII1;%f\n',indicesMap('NDII1'));
        fprintf(fid, 'NDII2;%f\n',indicesMap('NDII2'));
        fprintf(fid, 'NDLI;%f\n',indicesMap('NDLI'));
        fprintf(fid, 'NDMI1;%f\n',indicesMap('NDMI1'));
        fprintf(fid, 'NDMI2;%f\n',indicesMap('NDMI2'));
        fprintf(fid, 'NDMI3;%f\n',indicesMap('NDMI3'));
        fprintf(fid, 'NDNI;%f\n',indicesMap('NDNI'));
        fprintf(fid, 'NDRE;%f\n',indicesMap('NDRE'));
        fprintf(fid, 'NDSI1;%f\n',indicesMap('NDSI1'));
        fprintf(fid, 'NDSI2;%f\n',indicesMap('NDSI2'));
        fprintf(fid, 'NDSI3;%f\n',indicesMap('NDSI3'));
        fprintf(fid, 'NDSI4;%f\n',indicesMap('NDSI4'));
        fprintf(fid, 'NDSI5;%f\n',indicesMap('NDSI5'));
        fprintf(fid, 'NDSI6;%f\n',indicesMap('NDSI6'));
        fprintf(fid, 'NDSI7;%f\n',indicesMap('NDSI7'));
        fprintf(fid, 'NDSI8;%f\n',indicesMap('NDSI8'));
        fprintf(fid, 'NDSI9;%f\n',indicesMap('NDSI9'));
        fprintf(fid, 'NDSI10;%f\n',indicesMap('NDSI10'));
        fprintf(fid, 'NDSI11;%f\n',indicesMap('NDSI11'));
        fprintf(fid, 'NDSI12;%f\n',indicesMap('NDSI12'));
        fprintf(fid, 'NDSI13;%f\n',indicesMap('NDSI13'));
        fprintf(fid, 'NDSI14;%f\n',indicesMap('NDSI14'));
        fprintf(fid, 'NDSI15;%f\n',indicesMap('NDSI15'));
        fprintf(fid, 'NDSI16;%f\n',indicesMap('NDSI16'));
        fprintf(fid, 'NDSI17;%f\n',indicesMap('NDSI17'));
        fprintf(fid, 'NDSI18;%f\n',indicesMap('NDSI18'));
        fprintf(fid, 'NDSI19;%f\n',indicesMap('NDSI19'));
        fprintf(fid, 'NDSI20;%f\n',indicesMap('NDSI20'));
        fprintf(fid, 'NDSI21;%f\n',indicesMap('NDSI21'));
        fprintf(fid, 'NDSI22;%f\n',indicesMap('NDSI22'));
        fprintf(fid, 'NDSI23;%f\n',indicesMap('NDSI23'));
        fprintf(fid, 'NDSI24;%f\n',indicesMap('NDSI24'));
        fprintf(fid, 'NDSI25;%f\n',indicesMap('NDSI25'));
        fprintf(fid, 'NDSI26;%f\n',indicesMap('NDSI26'));
        fprintf(fid, 'NDSI27;%f\n',indicesMap('NDSI27'));
        fprintf(fid, 'NDSI28;%f\n',indicesMap('NDSI28'));
        fprintf(fid, 'NDSI29;%f\n',indicesMap('NDSI29'));
        fprintf(fid, 'NDSI30;%f\n',indicesMap('NDSI30'));
        fprintf(fid, 'NDSI31;%f\n',indicesMap('NDSI31'));
        fprintf(fid, 'NDSI32;%f\n',indicesMap('NDSI32'));
        fprintf(fid, 'NDSI33;%f\n',indicesMap('NDSI33'));
        fprintf(fid, 'NDSI34;%f\n',indicesMap('NDSI34'));
        fprintf(fid, 'NDSI35;%f\n',indicesMap('NDSI35'));
        fprintf(fid, 'NDSI36;%f\n',indicesMap('NDSI36'));
        fprintf(fid, 'NDSI37;%f\n',indicesMap('NDSI37'));
        fprintf(fid, 'NDSI38;%f\n',indicesMap('NDSI38'));
        fprintf(fid, 'NDSI39;%f\n',indicesMap('NDSI39'));
        fprintf(fid, 'NDSI40;%f\n',indicesMap('NDSI40'));
        fprintf(fid, 'NDSI41;%f\n',indicesMap('NDSI41'));
        fprintf(fid, 'NDVI1;%f\n',indicesMap('NDVI1'));
        fprintf(fid, 'NDVI2;%f\n',indicesMap('NDVI2'));
        fprintf(fid, 'NDVI3;%f\n',indicesMap('NDVI3'));
        fprintf(fid, 'NDVI4;%f\n',indicesMap('NDVI4'));
        fprintf(fid, 'NDVI5;%f\n',indicesMap('NDVI5'));
        fprintf(fid, 'NDVI6;%f\n',indicesMap('NDVI6'));
        fprintf(fid, 'NDVI7;%f\n',indicesMap('NDVI7'));
        fprintf(fid, 'NDVI8;%f\n',indicesMap('NDVI8'));
        fprintf(fid, 'NDVI9;%f\n',indicesMap('NDVI9'));
        fprintf(fid, 'NDVI10;%f\n',indicesMap('NDVI10'));
        fprintf(fid, 'NDVI11;%f\n',indicesMap('NDVI11'));
        fprintf(fid, 'NDVI12;%f\n',indicesMap('NDVI12'));
        fprintf(fid, 'NDVI13;%f\n',indicesMap('NDVI13'));
        fprintf(fid, 'NDVI14;%f\n',indicesMap('NDVI14'));
        fprintf(fid, 'NDVI15;%f\n',indicesMap('NDVI15'));
        fprintf(fid, 'NDVI16;%f\n',indicesMap('NDVI16'));
        fprintf(fid, 'NDVI17;%f\n',indicesMap('NDVI17'));
        fprintf(fid, 'NDVI18;%f\n',indicesMap('NDVI18'));
        fprintf(fid, 'NDWI1;%f\n',indicesMap('NDWI1'));
        fprintf(fid, 'NDWI2;%f\n',indicesMap('NDWI2'));
        fprintf(fid, 'NDWI3;%f\n',indicesMap('NDWI3'));
        fprintf(fid, 'NDWI4;%f\n',indicesMap('NDWI4'));
        fprintf(fid, 'NDWI5;%f\n',indicesMap('NDWI5'));
        fprintf(fid, 'NDWI6;%f\n',indicesMap('NDWI6'));
        fprintf(fid, 'NGRR_1;%f\n',indicesMap('NGRR_1'));
        fprintf(fid, 'NGRR_2;%f\n',indicesMap('NGRR_2'));
        fprintf(fid, 'NPQI;%f\n',indicesMap('NPQI'));
        fprintf(fid, 'NPCI;%f\n',indicesMap('NPCI'));
        fprintf(fid, 'OSAVI1;%f\n',indicesMap('OSAVI1'));
        fprintf(fid, 'OSAVI2;%f\n',indicesMap('OSAVI2'));
        fprintf(fid, 'OCAR;%f\n',indicesMap('OCAR'));
        fprintf(fid, 'PRI1;%f\n',indicesMap('PRI1'));
        fprintf(fid, 'PRI2;%f\n',indicesMap('PRI2'));
        fprintf(fid, 'PRI3;%f\n',indicesMap('PRI3'));
        fprintf(fid, 'PRI4;%f\n',indicesMap('PRI4'));
        fprintf(fid, 'PRI5;%f\n',indicesMap('PRI5'));
        fprintf(fid, 'PRI6;%f\n',indicesMap('PRI6'));
        fprintf(fid, 'PRI7;%f\n',indicesMap('PRI7'));
        fprintf(fid, 'PRI_CI;%f\n',indicesMap('PRI_CI'));
        fprintf(fid, 'PSND1;%f\n',indicesMap('PSND1'));
        fprintf(fid, 'PSND2;%f\n',indicesMap('PSND2'));
        fprintf(fid, 'PSND3;%f\n',indicesMap('PSND3'));
        fprintf(fid, 'PSND4;%f\n',indicesMap('PSND4'));
        fprintf(fid, 'PSSRa;%f\n',indicesMap('PSSRa'));
        fprintf(fid, 'PSSRb;%f\n',indicesMap('PSSRb'));
        fprintf(fid, 'PSSRc2;%f\n',indicesMap('PSSRc2'));
        fprintf(fid, 'PSSRchla;%f\n',indicesMap('PSSRchla'));
        fprintf(fid, 'PKI;%f\n',indicesMap('PKI'));
        fprintf(fid, 'PBI;%f\n',indicesMap('PBI'));
        fprintf(fid, 'PSRI1;%f\n',indicesMap('PSRI1'));
        fprintf(fid, 'PSRI2;%f\n',indicesMap('PSRI2'));
        fprintf(fid, 'RARS;%f\n',indicesMap('RARS'));
        fprintf(fid, 'RARSc;%f\n',indicesMap('RARSc'));
        fprintf(fid, 'RARSa;%f\n',indicesMap('RARSa'));
        fprintf(fid, 'RARSb;%f\n',indicesMap('RARSb'));
        fprintf(fid, 'RI_1dB;%f\n',indicesMap('RI_1dB'));
        fprintf(fid, 'RI_2dB;%f\n',indicesMap('RI_2dB'));
        fprintf(fid, 'RI_3dB;%f\n',indicesMap('RI_3dB'));
        fprintf(fid, 'RI_half;%f\n',indicesMap('RI_half'));
        fprintf(fid, 'RVI;%f\n',indicesMap('RVI'));
        fprintf(fid, 'RMSI;%f\n',indicesMap('RMSI'));
        fprintf(fid, 'RBI;%f\n',indicesMap('RBI'));
        fprintf(fid, 'RE;%f\n',indicesMap('RE'));
        fprintf(fid, 'REIP;%f\n',indicesMap('REIP'));
        fprintf(fid, 'R_M;%f\n',indicesMap('R_M'));
        fprintf(fid, 'RERI;%f\n',indicesMap('RERI'));
        fprintf(fid, 'RTVI;%f\n',indicesMap('RTVI'));
        fprintf(fid, 'RVSI;%f\n',indicesMap('RVSI'));
        fprintf(fid, 'RGI1;%f\n',indicesMap('RGI1'));
        fprintf(fid, 'RGI2;%f\n',indicesMap('RGI2'));
        fprintf(fid, 'RDVI1;%f\n',indicesMap('RDVI1'));
        fprintf(fid, 'RDVI2;%f\n',indicesMap('RDVI2'));
        fprintf(fid, 'SINDRI;%f\n',indicesMap('SINDRI'));
        fprintf(fid, 'SR1;%f\n',indicesMap('SR1'));
        fprintf(fid, 'SR2;%f\n',indicesMap('SR2'));
        fprintf(fid, 'SR3;%f\n',indicesMap('SR3'));
        fprintf(fid, 'SR4;%f\n',indicesMap('SR4'));
        fprintf(fid, 'SR5;%f\n',indicesMap('SR5'));
        fprintf(fid, 'SR6;%f\n',indicesMap('SR6'));
        fprintf(fid, 'SR7;%f\n',indicesMap('SR7'));
        fprintf(fid, 'SR8;%f\n',indicesMap('SR8'));
        fprintf(fid, 'SR9;%f\n',indicesMap('SR9'));
        fprintf(fid, 'SR10;%f\n',indicesMap('SR10'));
        fprintf(fid, 'SR11;%f\n',indicesMap('SR11'));
        fprintf(fid, 'SR12;%f\n',indicesMap('SR12'));
        fprintf(fid, 'SR13;%f\n',indicesMap('SR13'));
        fprintf(fid, 'SR14;%f\n',indicesMap('SR14'));
        fprintf(fid, 'SR15;%f\n',indicesMap('SR15'));
        fprintf(fid, 'SR16;%f\n',indicesMap('SR16'));
        fprintf(fid, 'SR17;%f\n',indicesMap('SR17'));
        fprintf(fid, 'SR18;%f\n',indicesMap('SR18'));
        fprintf(fid, 'SR19;%f\n',indicesMap('SR19'));
        fprintf(fid, 'SR20;%f\n',indicesMap('SR20'));
        fprintf(fid, 'SR21;%f\n',indicesMap('SR21'));
        fprintf(fid, 'SR22;%f\n',indicesMap('SR22'));
        fprintf(fid, 'SR23;%f\n',indicesMap('SR23'));
        fprintf(fid, 'SR24;%f\n',indicesMap('SR24'));
        fprintf(fid, 'SR25;%f\n',indicesMap('SR25'));
        fprintf(fid, 'SR26;%f\n',indicesMap('SR26'));
        fprintf(fid, 'SRPI;%f\n',indicesMap('SRPI'));
        fprintf(fid, 'SRWI1;%f\n',indicesMap('SRWI1'));
        fprintf(fid, 'SRWI2;%f\n',indicesMap('SRWI2'));
        fprintf(fid, 'SRWI3;%f\n',indicesMap('SRWI3'));
        fprintf(fid, 'SRWI4;%f\n',indicesMap('SRWI4'));
        fprintf(fid, 'SB1;%f\n',indicesMap('SB1'));
        fprintf(fid, 'SB2;%f\n',indicesMap('SB2'));
        fprintf(fid, 'SAVI1;%f\n',indicesMap('SAVI1'));
        fprintf(fid, 'SAVI2;%f\n',indicesMap('SAVI2'));
        fprintf(fid, 'SAVI3;%f\n',indicesMap('SAVI3'));
        fprintf(fid, 'SAVI4;%f\n',indicesMap('SAVI4'));
        fprintf(fid, 'SPVI1;%f\n',indicesMap('SPVI1'));
        fprintf(fid, 'SPVI2;%f\n',indicesMap('SPVI2'));
        fprintf(fid, 'SIPI1;%f\n',indicesMap('SIPI1'));
        fprintf(fid, 'SIPI2;%f\n',indicesMap('SIPI2'));
        fprintf(fid, 'SIPI3;%f\n',indicesMap('SIPI3'));
        fprintf(fid, 'SIPI4;%f\n',indicesMap('SIPI4'));
        fprintf(fid, 'TCARI_OSAVI;%f\n',indicesMap('TCARI_OSAVI'));
        fprintf(fid, 'TCARI1;%f\n',indicesMap('TCARI1'));
        fprintf(fid, 'TCARI2;%f\n',indicesMap('TCARI2'));
        fprintf(fid, 'TCARI3;%f\n',indicesMap('TCARI3'));
        fprintf(fid, 'TSAVI1;%f\n',indicesMap('TSAVI1'));
        fprintf(fid, 'TSAVI2;%f\n',indicesMap('TSAVI2'));
        fprintf(fid, 'TVI1;%f\n',indicesMap('TVI1'));
        fprintf(fid, 'TVI2;%f\n',indicesMap('TVI2'));
        fprintf(fid, 'VI;%f\n',indicesMap('VI'));
        fprintf(fid, 'VSR;%f\n',indicesMap('VSR'));
        fprintf(fid, 'Vg1;%f\n',indicesMap('Vg1'));
        fprintf(fid, 'Vg2;%f\n',indicesMap('Vg2'));
        fprintf(fid, 'Vg3;%f\n',indicesMap('Vg3'));
        fprintf(fid, 'WI1;%f\n',indicesMap('WI1'));
        fprintf(fid, 'WI2;%f\n',indicesMap('WI2'));
        fprintf(fid, 'WI3;%f\n',indicesMap('WI3'));
        fprintf(fid, 'WDVI1;%f\n',indicesMap('WDVI1'));
        fprintf(fid, 'WDVI2;%f\n',indicesMap('WDVI2'));
        fprintf(fid, 'WI_NDVI;%f\n',indicesMap('WI_NDVI'));
        fprintf(fid, 'YCAR;%f\n',indicesMap('YCAR'));
        fprintf(fid, 'ZM;%f\n',indicesMap('ZM'));

        %indices de agua

        fprintf(fid, 'NDVI_WATER;%f\n',indicesMap('NDVI_WATER'));
        fprintf(fid, 'SRI_WATER;%f\n',indicesMap('SRI_WATER'));
        fprintf(fid, 'EVI_WATER;%f\n',indicesMap('EVI_WATER'));
        fprintf(fid, 'ARVI_WATER;%f\n',indicesMap('ARVI_WATER'));
        fprintf(fid, 'reNDVI_WATER;%f\n',indicesMap('reNDVI_WATER'));
        fprintf(fid, 'MreNDVI_WATER;%f\n',indicesMap('MreNDVI_WATER'));
        fprintf(fid, 'MRESRI_WATER;%f\n',indicesMap('MRESRI_WATER'));
        fprintf(fid, 'VOG_REI_1_WATER;%f\n',indicesMap('VOG_REI_1_WATER'));
        fprintf(fid, 'VOG_REI_2_WATER;%f\n',indicesMap('VOG_REI_2_WATER'));
        fprintf(fid, 'VOG_REI_3_WATER;%f\n',indicesMap('VOG_REI_3_WATER'));
        fprintf(fid, 'PSRI_WATER;%f\n',indicesMap('PSRI_WATER'));
        fprintf(fid, 'WI_WATER;%f\n',indicesMap('WI_WATER'));
        fprintf(fid, 'RG1_WATER;%f\n',indicesMap('RG1_WATER'));
        fprintf(fid, 'RGI2_WATER;%f\n',indicesMap('RGI2_WATER'));
        fprintf(fid, 'RGI3_WATER;%f\n',indicesMap('RGI3_WATER'));
        fprintf(fid, 'NDWGI1_WATER;%f\n',indicesMap('NDWGI1_WATER'));
        fprintf(fid, 'NDWGI2_WATER;%f\n',indicesMap('NDWGI2_WATER'));
        fprintf(fid, 'NMDGI_WATER;%f\n',indicesMap('NMDGI_WATER'));
        fprintf(fid, 'MSGR_WATER;%f\n',indicesMap('MSGR_WATER'));
        fprintf(fid, 'TDGI_WATER;%f\n',indicesMap('TDGI_WATER'));
        fprintf(fid, 'WLHGI_WATER;%f\n',indicesMap('WLHGI_WATER'));
        fprintf(fid, 'DWI_WATER;%f\n',indicesMap('DWI_WATER'));
        fprintf(fid, 'MSI_WATER;%f\n',indicesMap('MSI_WATER'));
        fprintf(fid, 'NDWI_1_WATER;%f\n',indicesMap('NDWI_1_WATER'));
        fprintf(fid, 'SinNombreRatio_WATER;%f\n',indicesMap('SinNombreRatio_WATER'));
        fprintf(fid, 'SRWI_WATER;%f\n',indicesMap('SRWI_WATER'));
        fprintf(fid, 'WI_1_WATER;%f\n',indicesMap('WI_1_WATER'));
        fprintf(fid, 'NDSI1_WATER;%f\n',indicesMap('NDSI1_WATER'));
        fprintf(fid, 'NDSI2_WATER;%f\n',indicesMap('NDSI2_WATER'));
        fprintf(fid, 'NDSI3_WATER;%f\n',indicesMap('NDSI3_WATER'));
        fprintf(fid, 'RSI1_WATER;%f\n',indicesMap('RSI1_WATER'));
        fprintf(fid, 'RSI2_WATER;%f\n',indicesMap('RSI2_WATER'));
        fprintf(fid, 'PRI_1_WATER;%f\n',indicesMap('PRI_1_WATER'));
        fprintf(fid, 'PRI_2_WATER;%f\n',indicesMap('PRI_2_WATER'));
        fprintf(fid, 'mNDVI_WATER;%f\n',indicesMap('mNDVI_WATER'));
        fprintf(fid, 'SIPI_WATER;%f\n',indicesMap('SIPI_WATER'));
        fprintf(fid, 'NDVI_2_WATER;%f\n',indicesMap('NDVI_2_WATER'));
        fprintf(fid, 'NDII_WATER;%f\n',indicesMap('NDII_WATER'));
        fprintf(fid, 'WABI_1_WATER;%f\n',indicesMap('WABI_1_WATER'));
        fprintf(fid, 'WABI_2_WATER;%f\n',indicesMap('WABI_2_WATER'));
        fprintf(fid, 'WABI_3_WATER;%f\n',indicesMap('WABI_3_WATER'));
        fprintf(fid, 'GNDVI_WATER;%f\n',indicesMap('GNDVI_WATER'));
        fprintf(fid, 'NDGI_WATER;%f\n',indicesMap('NDGI_WATER'));
        fprintf(fid, 'NDWI_2_WATER;%f\n',indicesMap('NDWI_2_WATER'));
        fprintf(fid, 'SRWI_2_WATER;%f\n',indicesMap('SRWI_2_WATER'));
        fprintf(fid, 'GI_WATER;%f\n',indicesMap('GI_WATER'));
        fprintf(fid, 'WI_2_WATER;%f\n',indicesMap('WI_2_WATER'));
        fprintf(fid, 'MSI_2_WATER;%f\n',indicesMap('MSI_2_WATER'));
        fprintf(fid, 'WCRI_WATER;%f\n',indicesMap('WCRI_WATER'));
        fprintf(fid, 'RGI_WATER;%f\n',indicesMap('RGI_WATER'));
        fprintf(fid, 'SRWI_3_WATER;%f\n',indicesMap('SRWI_3_WATER'));
        fprintf(fid, 'NDVI_3_WATER;%f\n',indicesMap('NDVI_3_WATER'));
        fprintf(fid, 'NDWI_3_WATER;%f\n',indicesMap('NDWI_3_WATER'));
        fprintf(fid, 'SIWSI_WATER;%f\n',indicesMap('SIWSI_WATER'));
        fprintf(fid, 'NDII_2_WATER;%f\n',indicesMap('NDII_2_WATER'));
        fprintf(fid, 'ZTM_WATER;%f\n',indicesMap('ZTM_WATER'));
        fprintf(fid, 'PRI_3_WATER;%f\n',indicesMap('PRI_3_WATER'));
        fprintf(fid, 'WABI_4_WATER;%f\n',indicesMap('WABI_4_WATER'));
        fprintf(fid, 'BRI_2_WATER;%f\n',indicesMap('BRI_2_WATER'));
        fprintf(fid, 'NGRR_1_WATER;%f\n',indicesMap('NGRR_1_WATER'));
        fprintf(fid, 'NGRR_2_WATER;%f\n',indicesMap('NGRR_2_WATER'));
        fprintf(fid, 'SR1_WATER;%f\n',indicesMap('SR1_WATER'));
        fprintf(fid, 'SR2_WATER;%f\n',indicesMap('SR2_WATER'));
        fprintf(fid, 'SR3_WATER;%f\n',indicesMap('SR3_WATER'));
        fprintf(fid, 'SR4_WATER;%f\n',indicesMap('SR4_WATER'));
        fprintf(fid, 'RBI_WATER;%f\n',indicesMap('RBI_WATER'));
        fprintf(fid, 'MSI_3_WATER;%f\n',indicesMap('MSI_3_WATER'));
        fprintf(fid, 'NDVI_4_WATER;%f\n',indicesMap('NDVI_4_WATER'));
        fprintf(fid, 'NDVI_5_WATER;%f\n',indicesMap('NDVI_5_WATER'));
        fprintf(fid, 'NDVI_6_WATER;%f\n',indicesMap('NDVI_6_WATER'));
        fprintf(fid, 'SRWI_4_WATER;%f\n',indicesMap('SRWI_4_WATER'));
        fprintf(fid, 'SRWI_5_WATER;%f\n',indicesMap('SRWI_5_WATER'));
        fprintf(fid, 'SRWI_6_WATER;%f\n',indicesMap('SRWI_6_WATER'));
        fprintf(fid, 'MTVI_WATER;%f\n',indicesMap('MTVI_WATER'));
        fprintf(fid, 'TVI1_WATER;%f\n',indicesMap('TVI1_WATER'));
        fprintf(fid, 'Crt_WATER;%f\n',indicesMap('Crt_WATER'));
        fprintf(fid, 'CITRA;%f\n',indicesMap('CITRA'));
        fprintf(fid, 'PRI_NORM;%f\n',indicesMap('PRI_NORM'));
        fclose(fid);
    end

    function [indicesMap] = indices(reflectancia)
        %SELECCIONAR Y CORRER
        ARI = ( (1/reflectancia(550-349))-(1/reflectancia(700-349)) )
        AI = ((reflectancia(740-349)-reflectancia(887-349))/(reflectancia(691-349)-reflectancia(698-349)))
        BI = (6*(reflectancia(460-349)/reflectancia(660-349)))
        BGI1 = ((reflectancia(400-349))/(reflectancia(550-349)))
        BGI2 = ((reflectancia(450-349))/(reflectancia(550-349)))
        BRI1 = ((reflectancia(400-349))/(reflectancia(690-349)))
        BRI2 = ((reflectancia(450-349))/(reflectancia(690-349)))
        CaI = ((reflectancia(415-349))/(reflectancia(695-349)))
        CWMI1 = ((reflectancia(850-349))/(reflectancia(725-349)))
        CWMI2 = ((reflectancia(890-349))/(reflectancia(715-349)))
        CWMI3 = ((reflectancia(980-349))/(reflectancia(715-349)))
        Ctr1 = ((reflectancia(605-349))/(reflectancia(760-349)))
        Ctr2 = ((reflectancia(695-349))/(reflectancia(420-349)))
        Ctr3 = ((reflectancia(695-349))/(reflectancia(670-349)))
        Ctr4 = ((reflectancia(695-349))/(reflectancia(760-349)))
        Ctr5 = ((reflectancia(710-349))/(reflectancia(760-349)))
        CuI = ((reflectancia(675-349)*reflectancia(690-349))/(reflectancia(683-349)*reflectancia(683-349)))
        DSSI1 = ((reflectancia(719-349)-reflectancia(873-349)-reflectancia(509-349)-reflectancia(537-349))/((reflectancia(719-349)-reflectancia(873-349))+(reflectancia(509-349)-reflectancia(537-349))))
        DSSI2 = ((reflectancia(747-349)-reflectancia(901-349)-reflectancia(537-349)-reflectancia(572-349))/((reflectancia(747-349)-reflectancia(901-349))+(reflectancia(537-349)-reflectancia(572-349))))
        Datt1 = ((reflectancia(672-349))/(reflectancia(550-349)*reflectancia(708-349)))
        Datt2 = ((reflectancia(672-349))/(reflectancia(550-349)))
        Datt3 = ((reflectancia(754-349))/(reflectancia(704-349)))
        Datt4 = ((reflectancia(780-349)-reflectancia(710-349))/(reflectancia(780-349)-reflectancia(680-349)))
        Datt5 = ((reflectancia(850-349)-reflectancia(710-349))/(reflectancia(850-349)-reflectancia(680-349)))
        Datt6 = ((reflectancia(850-349))/(reflectancia(710-349)))
        Datt7 = ((reflectancia(860-349))/(reflectancia(550-349)*reflectancia(708-349)))
        DLAI = (reflectancia(1725-349)-reflectancia(970-349))
        DD1 = ((reflectancia(749-349)-reflectancia(720-349))-(reflectancia(701-349)-reflectancia(672-349)))
        DD2 = ((reflectancia(750-349)-reflectancia(720-349))-(reflectancia(700-349)-reflectancia(670-349)))
        EVI1 = (2.5*(reflectancia(830-349)-reflectancia(660-349))/(1+reflectancia(830-349)+6*reflectancia(660-349)-7.5*reflectancia(460-349)))
        EVI2 = (2.5*(reflectancia(830-349)-reflectancia(660-349))/(1+reflectancia(830-349)+6*reflectancia(660-349)-7.5*reflectancia(485-349)))
        GM1 = ((reflectancia(750-349))/(reflectancia(550-349)))
        GM2 = ((reflectancia(750-349))/(reflectancia(700-349)))
        GrM = (((reflectancia(800-349))/(reflectancia(550-349)))-1)
        GRI = ((reflectancia(830-349))/(reflectancia(550-349)))
        GI = ((reflectancia(554-349))/(reflectancia(677-349)))
        HREI1 = ((reflectancia(855-349)-reflectancia(720-349))/(reflectancia(855-349)+reflectancia(720-349)))
        HREI2 = ((reflectancia(910-349)-reflectancia(705-349))/(reflectancia(910-349)+reflectancia(705-349)))
        HWMI = ((reflectancia(855-349)-reflectancia(970-349))/(reflectancia(855-349)+reflectancia(970-349)))
        MCARIOSAVI = ((((reflectancia(750-349)-reflectancia(705-349))-0.2*(reflectancia(750-349)-reflectancia(550-349)))*(reflectancia(750-349)/reflectancia(705-349)))/((1+0.16)*(reflectancia(750-349)-reflectancia(705-349))/(reflectancia(750-349)+reflectancia(705-349)+0.16)))
        MTCI1 = ((reflectancia(750-349)-reflectancia(710-349))/(reflectancia(710-349)-reflectancia(680-349)))
        MTCI2 = ((reflectancia(754-349)-reflectancia(709-349))/(reflectancia(709-349)-reflectancia(681-349)))
        MTCI3 = ((reflectancia(800-349)-reflectancia(750-349))/(reflectancia(750-349)-reflectancia(670-349)))
        mCRI1 = (((1/reflectancia(510-349))-(1/reflectancia(550-349)))*reflectancia(780-349))
        mCRI2 = (((1/reflectancia(510-349))-(1/reflectancia(700-349)))*reflectancia(770-349))
        MCARI1 = (((reflectancia(700-349)-reflectancia(670-349))-0.2*(reflectancia(700-349)-reflectancia(550-349)))*(reflectancia(700-349)/reflectancia(670-349)))
        MCARI2 = (((reflectancia(750-349)-reflectancia(705-349))-0.2*(reflectancia(750-349)-reflectancia(550-349)))*(reflectancia(750-349)/reflectancia(705-349)))
        MCARI3 = ((1.5*(2.5*(reflectancia(800-349)-reflectancia(670-349))-1.3*(reflectancia(800-349)-reflectancia(550-349))))/(sqrt(((2*reflectancia(800-349)+1)*(2*reflectancia(800-349)+1))-(6*reflectancia(800-349)-5*sqrt(reflectancia(670-349)))-0.5)))
        mNDVI1 = ((reflectancia(750-349)-reflectancia(705-349))/(reflectancia(750-349)+reflectancia(705-349)-2*reflectancia(445-349)))
        mNDVI2 = ((reflectancia(800-349)-reflectancia(680-349))/(reflectancia(800-349)+reflectancia(680-349)-2*reflectancia(445-349)))
        mSR1 = (((reflectancia(600-349)/reflectancia(680-349))-1)/(sqrt(reflectancia(600-349)/reflectancia(680-349))+1))
        mSR2 = (((reflectancia(750-349)/reflectancia(705-349))-1)/(sqrt(reflectancia(750-349)/reflectancia(705-349))+1))
        mSR3 = ((reflectancia(800-349)-reflectancia(445-349))/(reflectancia(680-349)-reflectancia(445-349)))
        mSR4 = (((reflectancia(845-349)/reflectancia(665-349))-1)/(sqrt(reflectancia(845-349)/reflectancia(665-349))+1))
        mSR5 = ((reflectancia(750-349)-reflectancia(445-349))/(reflectancia(705-349)-reflectancia(445-349)))
        MSAVI1 = ((0.5*(2*reflectancia(800-349)+1-sqrt((2*reflectancia(800-349)+1)*(2*reflectancia(800-349)+1))))-(8*(reflectancia(800-349)-reflectancia(670-349))))
        MSAVI2 = ((1+0.5)*(reflectancia(830-349)-reflectancia(660-349))/(reflectancia(830-349)+reflectancia(660-349)+0.5))
        MTVI1 = (1.2*(1.2*(reflectancia(800-349)-reflectancia(550-349))-2.5*(reflectancia(670-349)-reflectancia(550-349))))
        MTVI2 = (1.2*(1.2*(reflectancia(880-349)-reflectancia(554-349))-2.5*(reflectancia(758-349)-reflectancia(554-349))))
        MVSR = (reflectancia(723-349)/reflectancia(700-349))
        MSI1 = (reflectancia(1650-349)/reflectancia(835-349))
        MSI2 = (reflectancia(1662-349)/reflectancia(927-349))
        MSI3 = (reflectancia(870-349)/reflectancia(1350-349))
        MSI4 = (reflectancia(1650-349)/reflectancia(850-349))
        NBNDVI = ((reflectancia(850-349)-reflectancia(680-349))/(reflectancia(850-349)+reflectancia(680-349)))
        NRI1 = ((reflectancia(1510-349)-reflectancia(660-349))/(reflectancia(1510-349)+reflectancia(660-349)))
        NRI2 = ((reflectancia(570-349)-reflectancia(670-349))/(reflectancia(570-349)+reflectancia(670-349)))
        NDCI = ((reflectancia(762-349)-reflectancia(527-349))/(reflectancia(762-349)+reflectancia(527-349)))
        NDg_b = ((reflectancia(573-349)-reflectancia(440-349))/(reflectancia(573-349)+reflectancia(440-349)))
        NDII1 = ((reflectancia(835-349)-reflectancia(1650-349))/(reflectancia(835-349)+reflectancia(1650-349)))
        NDII2 = ((reflectancia(860-349)-reflectancia(1650-349))/(reflectancia(860-349)+reflectancia(1650-349)))
        NDLI = ((log(1/reflectancia(1754-349))-log(1/reflectancia(1680-349)))/(log(1/reflectancia(1754-349))+log(1/reflectancia(1680-349))))
        NDMI1 = ((reflectancia(1649-349)-reflectancia(1722-349))/(reflectancia(1649-349)+reflectancia(1722-349)))
        NDMI2 = ((reflectancia(1650-349)-reflectancia(850-349))/(reflectancia(1650-349)+reflectancia(850-349)))
        NDMI3 = ((reflectancia(2200-349)-reflectancia(1100-349))/(reflectancia(2200-349)+reflectancia(1100-349)))
        NDNI = ((log(1/reflectancia(1510-349))-log(1/reflectancia(1680-349)))/(log(1/reflectancia(1510-349))+log(1/reflectancia(1680-349))))
        NDRE = ((reflectancia(790-349)-reflectancia(720-349))/(reflectancia(790-349)+reflectancia(720-349)))
        NDSI1 = ((reflectancia(1050-349)-reflectancia(1122-349))/(reflectancia(1050-349)+reflectancia(1122-349)))
        NDSI2 = ((reflectancia(1053-349)-reflectancia(1058-349))/(reflectancia(1053-349)+reflectancia(1058-349)))
        NDSI3 = ((reflectancia(1060-349)-reflectancia(1118-349))/(reflectancia(1060-349)+reflectancia(1118-349)))
        NDSI4 = ((reflectancia(1107-349)-reflectancia(1110-349))/(reflectancia(1107-349)+reflectancia(1110-349)))
        NDSI5 = ((reflectancia(1220-349)-reflectancia(710-349))/(reflectancia(1220-349)+reflectancia(710-349)))
        NDSI6 = ((reflectancia(1650-349)-reflectancia(830-349))/(reflectancia(1650-349)+reflectancia(830-349)))
        NDSI7 = ((reflectancia(2215-349)-reflectancia(830-349))/(reflectancia(2215-349)+reflectancia(830-349)))
        NDSI8 = ((reflectancia(403-349)-reflectancia(830-349))/(reflectancia(403-349)+reflectancia(830-349)))
        NDSI9 = ((reflectancia(410-349)-reflectancia(550-349))/(reflectancia(410-349)+reflectancia(550-349)))
        NDSI10 = ((reflectancia(410-349)-reflectancia(710-349))/(reflectancia(410-349)+reflectancia(710-349)))
        NDSI11 = ((reflectancia(413-349)-reflectancia(416-349))/(reflectancia(413-349)+reflectancia(416-349)))
        NDSI12 = ((reflectancia(420-349)-reflectancia(970-349))/(reflectancia(420-349)+reflectancia(970-349)))
        NDSI13 = ((reflectancia(422-349)-reflectancia(406-349))/(reflectancia(422-349)+reflectancia(406-349)))
        NDSI14 = ((reflectancia(422-349)-reflectancia(416-349))/(reflectancia(422-349)+reflectancia(416-349)))
        NDSI15 = ((reflectancia(422-349)-reflectancia(419-349))/(reflectancia(422-349)+reflectancia(419-349)))
        NDSI16 = ((reflectancia(442-349)-reflectancia(435-349))/(reflectancia(442-349)+reflectancia(435-349)))
        NDSI17 = ((reflectancia(442-349)-reflectancia(438-349))/(reflectancia(442-349)+reflectancia(438-349)))
        NDSI18 = ((reflectancia(450-349)-reflectancia(1330-349))/(reflectancia(450-349)+reflectancia(1330-349)))
        NDSI19 = ((reflectancia(503-349)-reflectancia(483-349))/(reflectancia(503-349)+reflectancia(483-349)))
        NDSI20 = ((reflectancia(518-349)-reflectancia(676-349))/(reflectancia(518-349)+reflectancia(676-349)))
        NDSI21 = ((reflectancia(520-349)-reflectancia(710-349))/(reflectancia(520-349)+reflectancia(710-349)))
        NDSI22 = ((reflectancia(530-349)-reflectancia(550-349))/(reflectancia(530-349)+reflectancia(550-349)))
        NDSI23 = ((reflectancia(542-349)-reflectancia(550-349))/(reflectancia(542-349)+reflectancia(550-349)))
        NDSI24 = ((reflectancia(543-349)-reflectancia(548-349))/(reflectancia(543-349)+reflectancia(548-349)))
        NDSI25 = ((reflectancia(550-349)-reflectancia(410-349))/(reflectancia(550-349)+reflectancia(410-349)))
        NDSI26 = ((reflectancia(620-349)-reflectancia(623-349))/(reflectancia(620-349)+reflectancia(623-349)))
        NDSI27 = ((reflectancia(620-349)-reflectancia(637-349))/(reflectancia(620-349)+reflectancia(637-349)))
        NDSI28 = ((reflectancia(682-349)-reflectancia(553-349))/(reflectancia(682-349)+reflectancia(553-349)))
        NDSI29 = ((reflectancia(720-349)-reflectancia(420-349))/(reflectancia(720-349)+reflectancia(420-349)))
        NDSI30 = ((reflectancia(750-349)-reflectancia(761-349))/(reflectancia(750-349)+reflectancia(761-349)))
        NDSI31 = ((reflectancia(760-349)-reflectancia(550-349))/(reflectancia(760-349)+reflectancia(550-349)))
        NDSI32 = ((reflectancia(801-349)-reflectancia(550-349))/(reflectancia(801-349)+reflectancia(550-349)))
        NDSI33 = ((reflectancia(860-349)-reflectancia(720-349))/(reflectancia(860-349)+reflectancia(720-349)))
        NDSI34 = ((reflectancia(870-349)-reflectancia(1450-349))/(reflectancia(870-349)+reflectancia(1450-349)))
        NDSI35 = ((reflectancia(933-349)-reflectancia(940-349))/(reflectancia(933-349)+reflectancia(940-349)))
        NDSI36 = ((reflectancia(933-349)-reflectancia(948-349))/(reflectancia(933-349)+reflectancia(948-349)))
        NDSI37 = ((reflectancia(940-349)-reflectancia(1122-349))/(reflectancia(940-349)+reflectancia(1122-349)))
        NDSI38 = ((reflectancia(962-349)-reflectancia(964-349))/(reflectancia(962-349)+reflectancia(964-349)))
        NDSI39 = ((reflectancia(971-349)-reflectancia(973-349))/(reflectancia(971-349)+reflectancia(973-349)))
        NDSI40 = ((reflectancia(565-349)-reflectancia(533-349))/(reflectancia(565-349)+reflectancia(533-349)))
        NDSI41 = ((reflectancia(1650-349)-reflectancia(2215-349))/(reflectancia(1650-349)+reflectancia(2215-349)))
        NDVI1 = ((reflectancia(750-349)-reflectancia(705-349))/(reflectancia(750-349)+reflectancia(705-349)))
        NDVI2 = ((reflectancia(755-349)-reflectancia(664-349))/(reflectancia(755-349)+reflectancia(664-349)))
        NDVI3 = ((reflectancia(760-349)-reflectancia(660-349))/(reflectancia(760-349)+reflectancia(660-349)))
        NDVI4 = ((reflectancia(760-349)-reflectancia(708-349))/(reflectancia(760-349)+reflectancia(708-349)))
        NDVI5 = ((reflectancia(780-349)-reflectancia(670-349))/(reflectancia(780-349)+reflectancia(670-349)))
        NDVI6 = ((reflectancia(800-349)-reflectancia(600-349))/(reflectancia(800-349)+reflectancia(600-349)))
        NDVI7 = ((reflectancia(800-349)-reflectancia(670-349))/(reflectancia(800-349)+reflectancia(670-349)))
        NDVI8 = ((reflectancia(800-349)-reflectancia(680-349))/(reflectancia(800-349)+reflectancia(680-349)))
        NDVI9 = ((reflectancia(801-349)-reflectancia(670-349))/(reflectancia(801-349)+reflectancia(670-349)))
        NDVI10 = ((reflectancia(807-349)-reflectancia(736-349))/(reflectancia(807-349)+reflectancia(736-349)))
        NDVI11 = ((reflectancia(830-349)-reflectancia(660-349))/(reflectancia(830-349)+reflectancia(660-349)))
        NDVI12 = ((reflectancia(845-349)-reflectancia(665-349))/(reflectancia(845-349)+reflectancia(665-349)))
        NDVI13 = ((reflectancia(870-349)-reflectancia(673-349))/(reflectancia(870-349)+reflectancia(673-349)))
        NDVI14 = ((reflectancia(880-349)-reflectancia(673-349))/(reflectancia(880-349)+reflectancia(673-349)))
        NDVI15 = ((reflectancia(884-349)-reflectancia(680-349))/(reflectancia(884-349)+reflectancia(680-349)))
        NDVI16 = ((reflectancia(895-349)-reflectancia(675-349))/(reflectancia(895-349)+reflectancia(675-349)))
        NDVI17 = ((reflectancia(900-349)-reflectancia(680-349))/(reflectancia(900-349)+reflectancia(680-349)))
        NDVI18 = ((reflectancia(927-349)-reflectancia(687-349))/(reflectancia(927-349)+reflectancia(687-349)))
        NDWI1 = ((reflectancia(860-349)-reflectancia(1240-349))/(reflectancia(860-349)+reflectancia(1240-349)))
        NDWI2 = ((reflectancia(870-349)-reflectancia(1260-349))/(reflectancia(870-349)+reflectancia(1260-349)))
        NDWI3 = ((reflectancia(970-349)-reflectancia(850-349))/(reflectancia(970-349)+reflectancia(850-349)))
        NDWI4 = ((reflectancia(970-349)-reflectancia(880-349))/(reflectancia(970-349)+reflectancia(880-349)))
        NDWI5 = ((reflectancia(970-349)-reflectancia(900-349))/(reflectancia(970-349)+reflectancia(900-349)))
        NDWI6 = ((reflectancia(970-349)-reflectancia(920-349))/(reflectancia(970-349)+reflectancia(920-349)))
        NGRR_1 = ((reflectancia(673-349)-reflectancia(554-349))/(reflectancia(673-349)+reflectancia(554-349)))
        NGRR_2 = ((reflectancia(673-349)+reflectancia(554-349))/(reflectancia(673-349)-reflectancia(554-349)))
        NPQI = ((reflectancia(415-349)-reflectancia(435-349))/(reflectancia(415-349)+reflectancia(435-349)))
        NPCI = ((reflectancia(680-349)-reflectancia(430-349))/(reflectancia(680-349)+reflectancia(430-349)))
        OSAVI1 = ((1+0.16)*(reflectancia(750-349)-reflectancia(705-349))/(reflectancia(750-349)+reflectancia(705-349)+0.16))
        OSAVI2 = ((1+0.16)*(reflectancia(800-349)-reflectancia(670-349))/(reflectancia(800-349)+reflectancia(670-349)+0.16))
        OCAR = (reflectancia(630-349)/reflectancia(680-349))
        PRI1 = ((reflectancia(512-349)-reflectancia(531-349))/(reflectancia(512-349)+reflectancia(531-349)))
        PRI2 = ((reflectancia(528-349)-reflectancia(567-349))/(reflectancia(528-349)+reflectancia(567-349)))
        PRI3 = ((reflectancia(550-349)-reflectancia(531-349))/(reflectancia(550-349)+reflectancia(531-349)))
        PRI4 = ((reflectancia(570-349)-reflectancia(530-349))/(reflectancia(570-349)+reflectancia(530-349)))
        PRI5 = ((reflectancia(570-349)-reflectancia(531-349)-reflectancia(670-349))/(reflectancia(570-349)+reflectancia(531-349)+reflectancia(670-349)))
        PRI6 = ((reflectancia(570-349)-reflectancia(531-349))/(reflectancia(570-349)+reflectancia(531-349)))
        PRI7 = ((reflectancia(570-349)-reflectancia(539-349))/(reflectancia(570-349)+reflectancia(539-349)))
        PRI_CI = ((reflectancia(570-349)-reflectancia(530-349))/((reflectancia(570-349)+reflectancia(530-349))*(reflectancia(760-349)/(reflectancia(700-349)-1))))
        PSND1 = ((reflectancia(800-349)-reflectancia(470-349))/(reflectancia(800-349)+reflectancia(470-349)))
        PSND2 = ((reflectancia(800-349)-reflectancia(635-349))/(reflectancia(800-349)+reflectancia(635-349)))
        PSND3 = ((reflectancia(800-349)-reflectancia(650-349))/(reflectancia(800-349)+reflectancia(650-349)))
        PSND4 = ((reflectancia(800-349)-reflectancia(675-349))/(reflectancia(800-349)+reflectancia(675-349)))
        PSSRa = (reflectancia(800-349)/reflectancia(680-349))
        PSSRb = (reflectancia(800-349)/reflectancia(635-349))
        PSSRc2 = (reflectancia(800-349)/reflectancia(470-349))
        PSSRchla = (reflectancia(810-349)/reflectancia(676-349))
        PKI = ((reflectancia(1645-349)-reflectancia(1715-349))/(reflectancia(1645-349)+reflectancia(1715-349)))
        PBI = (reflectancia(810-349)/reflectancia(560-349))
        PSRI1 = ((reflectancia(678-349)-reflectancia(500-349))/(reflectancia(750-349)))
        PSRI2 = ((reflectancia(680-349)-reflectancia(500-349))/(reflectancia(750-349)))
        RARS = ((reflectancia(746-349))/(reflectancia(513-349)))
        RARSc = ((reflectancia(760-349))/(reflectancia(500-349)))
        RARSa = ((reflectancia(675-349))/(reflectancia(700-349)))
        RARSb = ((reflectancia(675-349))/(reflectancia(650-349)*reflectancia(700-349)))
        RI_1dB = ((reflectancia(735-349))/(reflectancia(720-349)))
        RI_2dB = ((reflectancia(738-349))/(reflectancia(720-349)))
        RI_3dB = ((reflectancia(741-349))/(reflectancia(717-349)))
        RI_half = ((reflectancia(747-349))/(reflectancia(708-349)))
        RVI = ((reflectancia(800-349))/(reflectancia(673-349)))
        RMSI = ((reflectancia(860-349))/(reflectancia(1650-349)))
        RBI = ((reflectancia(695-349))/(reflectancia(445-349)))
        RE = (((reflectancia(670-349))+(reflectancia(780-349)))/2)
        REIP = ((700+40*((reflectancia(670-349)+reflectancia(780-349))/(2-reflectancia(700-349))))/(reflectancia(740-349)-reflectancia(700-349)))
        R_M = (((reflectancia(750-349))/(reflectancia(720-349)))-1)
        RERI = (((reflectancia(750-349)-reflectancia(800-349))/(reflectancia(695-349)-reflectancia(740-349)))-1)
        RTVI = ((100*((reflectancia(750-349)-reflectancia(730-349))-10*(reflectancia(750-349)-reflectancia(550-349))))*(sqrt(reflectancia(700-349)/reflectancia(670-349))))
        RVSI = (((reflectancia(714-349)+reflectancia(752-349))/2)-reflectancia(733-349))
        RGI1 = ((reflectancia(690-349))/(reflectancia(550-349)))
        RGI2 = ((reflectancia(695-349))/(reflectancia(554-349)))
        RDVI1 = ((reflectancia(800-349)-reflectancia(670-349))/(sqrt(reflectancia(800-349)+reflectancia(670-349))))
        RDVI2 = (sqrt(((reflectancia(880-349)-reflectancia(673-349))/(reflectancia(880-349)+reflectancia(673-349)))*(reflectancia(880-349)-reflectancia(673-349))))
        SINDRI = ((reflectancia(2210-349)-reflectancia(2260-349))/(reflectancia(2210-349)+reflectancia(2260-349)))
        SR1 = ((reflectancia(1070-349))/(reflectancia(1340-349)))
        SR2 = ((reflectancia(415-349))/(reflectancia(685-349)))
        SR3 = ((reflectancia(415-349))/(reflectancia(710-349)))
        SR4 = ((reflectancia(440-349))/(reflectancia(685-349)))
        SR5 = ((reflectancia(525-349))/(reflectancia(685-349)))
        SR6 = ((reflectancia(553-349))/(reflectancia(537-349)))
        SR7 = ((reflectancia(545-349))/(reflectancia(538-349)))
        SR8 = ((reflectancia(550-349))/(reflectancia(670-349)))
        SR9 = ((reflectancia(678-349))/(reflectancia(1070-349)))
        SR10 = ((reflectancia(678-349))/(reflectancia(880-349)))
        SR11 = ((reflectancia(685-349))/(reflectancia(655-349)))
        SR12 = ((reflectancia(690-349))/(reflectancia(655-349)))
        SR13 = ((reflectancia(700-349))/(reflectancia(670-349)))
        SR14 = ((1)/(reflectancia(700-349)))
        SR15 = ((reflectancia(750-349))/(reflectancia(705-349)))
        SR16 = ((reflectancia(752-349))/(reflectancia(690-349)))
        SR17 = ((reflectancia(780-349))/(reflectancia(740-349)))
        SR18 = ((reflectancia(800-349))/(reflectancia(670-349)))
        SR19 = ((reflectancia(801-349))/(reflectancia(550-349)))
        SR20 = ((reflectancia(801-349))/(reflectancia(670-349)))
        SR21 = ((reflectancia(830-349))/(reflectancia(660-349)))
        SR22 = ((reflectancia(845-349))/(reflectancia(665-349)))
        SR23 = ((reflectancia(900-349))/(reflectancia(680-349)))
        SR24 = ((reflectancia(927-349))/(reflectancia(687-349)))
        SR25 = ((reflectancia(960-349))/(reflectancia(950-349)))
        SR26 = ((reflectancia(990-349))/(reflectancia(720-349)))
        SRPI = ((reflectancia(430-349))/(reflectancia(680-349)))
        SRWI1 = ((reflectancia(1350-349))/(reflectancia(870-349)))
        SRWI2 = ((reflectancia(858-349))/(reflectancia(1240-349)))
        SRWI3 = ((reflectancia(860-349))/(reflectancia(1240-349)))
        SRWI4 = ((reflectancia(880-349))/(reflectancia(1265-349)))
        SB1 = (reflectancia(460-349))
        SB2 = (reflectancia(655-349))
        SAVI1 = ((1+0.5)*(reflectancia(800-349)-reflectancia(670-349))/(reflectancia(800-349)+reflectancia(670-349)+0.5))
        SAVI2 = (reflectancia(800-349)/(reflectancia(670-349)+(0.0183/1.2344)))
        SAVI3 = ((1+0.5)*(reflectancia(807-349)-reflectancia(736-349))/(reflectancia(807-349)+reflectancia(736-349)+0.5))
        SAVI4 = ((1+0.5)*(reflectancia(830-349)-reflectancia(660-349))/(reflectancia(830-349)+reflectancia(660-349)+0.5))
        SPVI1 = (0.4*(3.7*(reflectancia(800-349)-reflectancia(670-349)))-1.2*sqrt((reflectancia(530-349)-reflectancia(670-349))*(reflectancia(530-349)-reflectancia(670-349))))
        SPVI2 = (0.4*(3.7*(reflectancia(800-349)-reflectancia(670-349))-1.2*(abs(reflectancia(550-349)-reflectancia(670-349)))))
        SIPI1 = ((reflectancia(800-349)-reflectancia(440-349))/(reflectancia(800-349)-reflectancia(680-349)))
        SIPI2 = ((reflectancia(800-349)-reflectancia(445-349))/(reflectancia(800-349)+reflectancia(680-349)))
        SIPI3 = ((reflectancia(800-349)-reflectancia(450-349))/(reflectancia(800-349)-reflectancia(650-349)))
        SIPI4 = ((reflectancia(800-349)-reflectancia(450-349))/(reflectancia(800-349)-reflectancia(680-349)))
        TCARI_OSAVI = ((3*((reflectancia(700-349)-reflectancia(670-349))-0.2*(reflectancia(700-349)-reflectancia(550-349))*(reflectancia(700-349)/reflectancia(670-349))))/((1+0.16)*(reflectancia(800-349)-reflectancia(670-349))/(reflectancia(800-349)+reflectancia(670-349)+0.16)))
        TCARI1 = (3*((reflectancia(700-349)-reflectancia(600-349))-((0.2*(reflectancia(700-349)-reflectancia(550-349)))*(reflectancia(700-349)/(reflectancia(850-349)+reflectancia(670-349))))))
        TCARI2 = (3*((reflectancia(700-349)-reflectancia(670-349))-((0.2*(reflectancia(700-349)-reflectancia(550-349)))*(reflectancia(700-349)/reflectancia(670-349)))))
        TCARI3 = (3*((reflectancia(750-349)-reflectancia(705-349))-((0.2*(reflectancia(750-349)-reflectancia(550-349)))*(reflectancia(750-349)/reflectancia(705-349)))))
        TSAVI1 = ((1.2344*(reflectancia(800-349)-(1.2344*reflectancia(670-349))-0.0183))/((1.2344*(reflectancia(800-349)+reflectancia(670-349)))-(1.2344*0.0183)))
        TSAVI2 = (1.062*(reflectancia(875-349)-(1.062*reflectancia(680-349))-0.022)/(reflectancia(680-349)+1.062*(reflectancia(875-349)-0.022)+0.08*(1+(1.062*1.062))))
        TVI1 = (0.5*(120*(reflectancia(750-349)-reflectancia(550-349))-200*(reflectancia(670-349)-reflectancia(550-349))))
        TVI2 = (0.5*(120*(reflectancia(758-349)-reflectancia(554-349))-200*(reflectancia(674-349)-reflectancia(554-349))))
        VI = ((reflectancia(800-349)/reflectancia(694-349))-1)
        VSR = ((reflectancia(725-349))/(reflectancia(702-349)))
        Vg1 = ((reflectancia(734-349)-reflectancia(747-349))/(reflectancia(715-349)+reflectancia(720-349)))
        Vg2 = ((reflectancia(734-349)-reflectancia(747-349))/(reflectancia(715-349)+reflectancia(726-349)))
        Vg3 = ((reflectancia(740-349))/(reflectancia(720-349)))
        WI1 = ((reflectancia(900-349))/(reflectancia(970-349)))
        WI2 = ((reflectancia(950-349))/(reflectancia(900-349)))
        WI3 = ((reflectancia(970-349))/(reflectancia(900-349)))
        WDVI1 = (reflectancia(800-349)-(1.2344*reflectancia(670-349)))
        WDVI2 = (reflectancia(830-349)-(1.06*reflectancia(660-349)))
        WI_NDVI = (((reflectancia(970-349))/(reflectancia(900-349)))/(((reflectancia(800-349))-(reflectancia(680-349)))/((reflectancia(800-349))+(reflectancia(680-349)))))
        YCAR = ((reflectancia(600-349))/(reflectancia(680-349)))
        ZM = ((reflectancia(750-349))/(reflectancia(710-349)))

        %INDICES RELACIONADOS CON EL AGUA

        NDVI_WATER = ((reflectancia(800-349)-reflectancia(680-349))/(reflectancia(800-349)+reflectancia(680-349)))
        SRI_WATER = (reflectancia(900-349)/reflectancia(680-349))
        EVI_WATER = (2.5*((reflectancia(800-349)-reflectancia(680-349))/(reflectancia(800-349)+6*reflectancia(680-349)-7.5*reflectancia(450-349)+1)))
        ARVI_WATER = ((reflectancia(800-349)-(2*reflectancia(680-349)-reflectancia(450-349)))/(reflectancia(800-349)+(2*reflectancia(680-349)-reflectancia(450-349))))
        reNDVI_WATER = ((reflectancia(750-349)-reflectancia(705-349))/(reflectancia(750-349)+reflectancia(705-349)))
        MreNDVI_WATER = ((reflectancia(750-349)-reflectancia(705-349))/(reflectancia(750-349)+reflectancia(705-349)-2*reflectancia(445-349)))
        MRESRI_WATER = ((reflectancia(750-349)-reflectancia(445-349))/(reflectancia(705-349)-reflectancia(445-349)))
        VOG_REI_1_WATER = (reflectancia(740-349)/reflectancia(720-349))
        VOG_REI_2_WATER=  ((reflectancia(734-349)-reflectancia(747-349))/(reflectancia(715-349)+reflectancia(726-349)))
        VOG_REI_3_WATER = ((reflectancia(734-349)-reflectancia(747-349))/(reflectancia(715-349)+reflectancia(720-349)))
        PSRI_WATER = ((reflectancia(680-349)-reflectancia(500-349))/reflectancia(750-349))
        WI_WATER = (reflectancia(900-349)/reflectancia(970-349))
        RG1_WATER = (reflectancia(1600-349)/reflectancia(820-349))
        RGI2_WATER = (reflectancia(900-349)/reflectancia(970-349))
        RGI3_WATER = (reflectancia(860-349)/reflectancia(1240-349))
        NDWGI1_WATER = ((reflectancia(820-349)-reflectancia(1650-349))/(reflectancia(820-349)+reflectancia(1650-349)))
        NDWGI2_WATER = ((reflectancia(860-349)-reflectancia(1240-349))/(reflectancia(860-349)+reflectancia(1240-349)))
        NMDGI_WATER = ((reflectancia(860-349)-(reflectancia(1640-349)-reflectancia(2130-349)))/(reflectancia(860-349)+(reflectancia(1640-349)-reflectancia(2130-349))))
        MSGR_WATER = ((reflectancia(753-349)-reflectancia(708-349))/(reflectancia(708-349)-reflectancia(681-349)))
        TDGI_WATER = ((0.02*(reflectancia(670-349)-reflectancia(550-349)))+(0.01*(reflectancia(670-349)-reflectancia(480-349))))
        WLHGI_WATER = (reflectancia(676-349)-0.5*(reflectancia(746-349)+reflectancia(665-349)))
        DWI_WATER = ((2.044*(reflectancia(1080-349)))-((0.044*(reflectancia(850-349)))-reflectancia(970-349)-reflectancia(1200-349)))
        MSI_WATER = (reflectancia(1600-349)/reflectancia(820-349))
        NDWI_1_WATER = ((reflectancia(860-349)-reflectancia(1240-349))/(reflectancia(860-349)+reflectancia(1240-349)))
        SinNombreRatio_WATER = (reflectancia(1650-349)/reflectancia(2220-349))
        SRWI_WATER = (reflectancia(858-349)/reflectancia(1240-349))
        WI_1_WATER = (reflectancia(900-349)/reflectancia(970-349))
        NDSI1_WATER = ((reflectancia(1347-349)-reflectancia(2307-349))/(reflectancia(1347-349)+reflectancia(2307-349)))
        NDSI2_WATER = ((reflectancia(1650-349)-reflectancia(1801-349))/(reflectancia(1650-349)+reflectancia(1801-349)))
        NDSI3_WATER = ((reflectancia(1300-349)-reflectancia(2308-349))/(reflectancia(1300-349)+reflectancia(2308-349)))
        RSI1_WATER = (reflectancia(2307-349)/reflectancia(1347-349))
        RSI2_WATER = (reflectancia(1801-349)/reflectancia(1650-349))
        PRI_1_WATER = ((reflectancia(531-349)-reflectancia(550-349))/(reflectancia(531-349)+reflectancia(550-349)))
        PRI_2_WATER = ((reflectancia(531-349)-reflectancia(570-349))/(reflectancia(531-349)+reflectancia(570-349)))
        mNDVI_WATER = ((reflectancia(750-349)-reflectancia(705-349))/(reflectancia(750-349)+reflectancia(705-349)))
        SIPI_WATER = ((reflectancia(800-349)-reflectancia(445-349))/(reflectancia(800-349)+reflectancia(680-349)))
        NDVI_2_WATER = ((reflectancia(800-349)-reflectancia(675-349))/(reflectancia(800-349)+reflectancia(675-349)))
        NDII_WATER = ((reflectancia(820-349)-reflectancia(1650-349))/(reflectancia(820-349)+reflectancia(1650-349)))
        WABI_1_WATER = ((reflectancia(1490-349)-reflectancia(531-349))/(reflectancia(1490-349)+reflectancia(531-349)))
        WABI_2_WATER = ((reflectancia(1500-349)-reflectancia(538-349))/(reflectancia(1500-349)+reflectancia(538-349)))
        WABI_3_WATER = ((reflectancia(1485-349)-reflectancia(550-349))/(reflectancia(1485-349)+reflectancia(550-349)))
        GNDVI_WATER = ((reflectancia(800-349)-reflectancia(550-349))/(reflectancia(800-349)+reflectancia(550-349)))
        NDGI_WATER = ((reflectancia(550-349)-reflectancia(680-349))/(reflectancia(550-349)+reflectancia(680-349)))
        NDWI_2_WATER= ((reflectancia(858-349)-reflectancia(1240-349))/(reflectancia(858-349)+reflectancia(1240-349)))
        SRWI_2_WATER = (reflectancia(680-349)/reflectancia(1240-349))
        GI_WATER = (reflectancia(550-349)/reflectancia(680-349))
        WI_2_WATER = (reflectancia(680-349)/reflectancia(858-349))
        MSI_2_WATER = (reflectancia(858-349)/reflectancia(1240-349))
        WCRI_WATER = (reflectancia(1455-349)/(reflectancia(1272-349)-reflectancia(1455-349)))
        RGI_WATER = (reflectancia(695-349)/reflectancia(554-349))
        SRWI_3_WATER = (reflectancia(1350-349)/reflectancia(870-349))
        NDVI_3_WATER = ((reflectancia(858-349)-reflectancia(645-349))/(reflectancia(858-349)+reflectancia(645-349)))
        NDWI_3_WATER = ((reflectancia(870-349)-reflectancia(1260-349))/(reflectancia(870-349)+reflectancia(1260-349)))
        SIWSI_WATER = ((reflectancia(858-349)-reflectancia(1640-349))/(reflectancia(858-349)+reflectancia(1640-349)))
        NDII_2_WATER = ((reflectancia(835-349)-reflectancia(1650-349))/(reflectancia(835-349)+reflectancia(1650-349)))
        ZTM_WATER = (reflectancia(750-349)/reflectancia(710-349))
        PRI_3_WATER = ((reflectancia(570-349)-reflectancia(531-349))/(reflectancia(570-349)+reflectancia(531-349)))
        WABI_4_WATER = ((reflectancia(1500-349)-reflectancia(531-349))/(reflectancia(1500-349)+reflectancia(531-349)))
        BRI_2_WATER = (reflectancia(440-349)/reflectancia(690-349))
        NGRR_1_WATER = ((reflectancia(673-349)-reflectancia(554-349))/(reflectancia(673-349)+reflectancia(554-349)))
        NGRR_2_WATER = ((reflectancia(673-349)+reflectancia(554-349))/(reflectancia(673-349)-reflectancia(554-349)))
        SR1_WATER = (reflectancia(695-349)/reflectancia(760-349))
        SR2_WATER = (reflectancia(1070-349)/reflectancia(1340-349))
        SR3_WATER = (reflectancia(678-349)/reflectancia(880-349))
        SR4_WATER = (reflectancia(678-349)/reflectancia(1070-349))
        RBI_WATER = (reflectancia(695-349)/reflectancia(445-349))
        MSI_3_WATER = (reflectancia(870-349)/reflectancia(1350-349))
        NDVI_4_WATER = ((reflectancia(858-349)-reflectancia(645-349))/(reflectancia(858-349)+reflectancia(645-349)))
        NDVI_5_WATER = ((reflectancia(870-349)-reflectancia(673-349))/(reflectancia(870-349)+reflectancia(673-349)))
        NDVI_6_WATER = ((reflectancia(884-349)-reflectancia(680-349))/(reflectancia(884-349)+reflectancia(680-349)))
        SRWI_4_WATER = (reflectancia(880-349)/reflectancia(1265-349))
        SRWI_5_WATER = ((reflectancia(1350-349)/reflectancia(870-349)))
        SRWI_6_WATER = ((reflectancia(880-349)/reflectancia(1265-349)))
        MTVI_WATER = (1.2*(1.2*((reflectancia(880-349)))-(reflectancia(554-349)))-2.5*(reflectancia(758-349)-reflectancia(554-349)))
        TVI1_WATER = (0.5*(120*(reflectancia(758-349)-reflectancia(554-349))-200*(reflectancia(674-349)-reflectancia(554-349))))
        Crt_WATER = (reflectancia(700-349)/reflectancia(420-349))
        CITRA = ((reflectancia(1150-349)-reflectancia(850-349))/(reflectancia(1150-349)+reflectancia(850-349)))
        PRI_NORM = (((reflectancia(570-349)-reflectancia(531-349))/(reflectancia(570-349)+reflectancia(531-349)))/(((reflectancia(800-349)-reflectancia(670-349))/((sqrt(reflectancia(800-349)+reflectancia(670-349)))))*(reflectancia(700-349)/reflectancia(670-349))))

        keySet = {'ARI','AI','BI','BGI1','BGI2','BRI1','BRI2','CaI','CWMI1','CWMI2','CWMI3','Ctr1','Ctr2','Ctr3','Ctr4','Ctr5','CuI','DSSI1','DSSI2','Datt2','Datt1','Datt3','Datt4','Datt5','Datt6','Datt7','DLAI','DD1','DD2','EVI1','EVI2','GM1','GM2','GrM','GRI','GI','HREI1','HREI2','HWMI','MCARIOSAVI','MTCI1','MTCI2','MTCI3','mCRI1','mCRI2','MCARI1','MCARI2','MCARI3','mNDVI1','mNDVI2','mSR1','mSR2','mSR3','mSR4','mSR5','MSAVI1','MSAVI2','MTVI1','MTVI2','MVSR','MSI1','MSI2','MSI3','MSI4','NBNDVI','NRI1','NRI2','NDCI','NDg_b','NDII1','NDII2','NDLI','NDMI1','NDMI2','NDMI3','NDNI','NDRE','NDSI1','NDSI2','NDSI3','NDSI4','NDSI5','NDSI6','NDSI7','NDSI8','NDSI9','NDSI10','NDSI11','NDSI12','NDSI13','NDSI14','NDSI15','NDSI16','NDSI17','NDSI18','NDSI19','NDSI20','NDSI21','NDSI22','NDSI23','NDSI24','NDSI25','NDSI26','NDSI27','NDSI28','NDSI29','NDSI30','NDSI31','NDSI32','NDSI33','NDSI34','NDSI35','NDSI36','NDSI37','NDSI38','NDSI39','NDSI40','NDSI41','NDVI1','NDVI2','NDVI3','NDVI4','NDVI5','NDVI6','NDVI7','NDVI8','NDVI9','NDVI10','NDVI11','NDVI12','NDVI13','NDVI14','NDVI15','NDVI16','NDVI17','NDVI18','NDWI1','NDWI2','NDWI3','NDWI4','NDWI5','NDWI6','NGRR_1','NGRR_2','NPQI','NPCI','OSAVI1','OSAVI2','OCAR','PRI1','PRI2','PRI3','PRI4','PRI5','PRI6','PRI7','PRI_CI','PSND1','PSND2','PSND3','PSND4','PSSRa','PSSRb','PSSRc2','PSSRchla','PKI','PBI','PSRI1','PSRI2','RARS','RARSc','RARSa','RARSb','RI_1dB','RI_2dB','RI_3dB','RI_half','RVI','RMSI','RBI','RE','REIP','R_M','RERI','RTVI','RVSI','RGI1','RGI2','RDVI1','RDVI2','SINDRI','SR1','SR2','SR3','SR4','SR5','SR6','SR7','SR8','SR9','SR10','SR11','SR12','SR13','SR14','SR15','SR16','SR17','SR18','SR19','SR20','SR21','SR22','SR23','SR24','SR25','SR26','SRPI','SRWI1','SRWI2','SRWI3','SRWI4','SB1','SB2','SAVI1','SAVI2','SAVI3','SAVI4','SPVI1','SPVI2','SIPI1','SIPI2','SIPI3','SIPI4','TCARI_OSAVI','TCARI1','TCARI2','TCARI3','TSAVI1','TSAVI2','TVI1','TVI2','VI','VSR','Vg1','Vg2','Vg3','WI1','WI2','WI3','WDVI1','WDVI2','WI_NDVI','YCAR','ZM','NDVI_WATER','SRI_WATER','EVI_WATER','ARVI_WATER','reNDVI_WATER','MreNDVI_WATER','MRESRI_WATER','VOG_REI_1_WATER','VOG_REI_2_WATER','VOG_REI_3_WATER','PSRI_WATER','WI_WATER','RG1_WATER','RGI2_WATER','RGI3_WATER','NDWGI1_WATER','NDWGI2_WATER','NMDGI_WATER','MSGR_WATER','TDGI_WATER','WLHGI_WATER','DWI_WATER','MSI_WATER','NDWI_1_WATER','SinNombreRatio_WATER','SRWI_WATER','WI_1_WATER','NDSI1_WATER','NDSI2_WATER','NDSI3_WATER','RSI1_WATER','RSI2_WATER','PRI_1_WATER','PRI_2_WATER','mNDVI_WATER','SIPI_WATER','NDVI_2_WATER','NDII_WATER','WABI_1_WATER','WABI_2_WATER','WABI_3_WATER','GNDVI_WATER','NDGI_WATER','NDWI_2_WATER','SRWI_2_WATER','GI_WATER','WI_2_WATER','MSI_2_WATER','WCRI_WATER','RGI_WATER','SRWI_3_WATER','NDVI_3_WATER','NDWI_3_WATER','SIWSI_WATER','NDII_2_WATER','ZTM_WATER','PRI_3_WATER','WABI_4_WATER','BRI_2_WATER','NGRR_1_WATER','NGRR_2_WATER','SR1_WATER','SR2_WATER','SR3_WATER','SR4_WATER','RBI_WATER','MSI_3_WATER','NDVI_4_WATER','NDVI_5_WATER','NDVI_6_WATER','SRWI_4_WATER','SRWI_5_WATER','SRWI_6_WATER','MTVI_WATER','TVI1_WATER','Crt_WATER','CITRA','PRI_NORM'};
        valueSet = [ARI,AI,BI,BGI1,BGI2,BRI1,BRI2,CaI,CWMI1,CWMI2,CWMI3,Ctr1,Ctr2,Ctr3,Ctr4,Ctr5,CuI,DSSI1,DSSI2,Datt2,Datt1,Datt3,Datt4,Datt5,Datt6,Datt7,DLAI,DD1,DD2,EVI1,EVI2,GM1,GM2,GrM,GRI,GI,HREI1,HREI2,HWMI,MCARIOSAVI,MTCI1,MTCI2,MTCI3,mCRI1,mCRI2,MCARI1,MCARI2,MCARI3,mNDVI1,mNDVI2,mSR1,mSR2,mSR3,mSR4,mSR5,MSAVI1,MSAVI2,MTVI1,MTVI2,MVSR,MSI1,MSI2,MSI3,MSI4,NBNDVI,NRI1,NRI2,NDCI,NDg_b,NDII1,NDII2,NDLI,NDMI1,NDMI2,NDMI3,NDNI,NDRE,NDSI1,NDSI2,NDSI3,NDSI4,NDSI5,NDSI6,NDSI7,NDSI8,NDSI9,NDSI10,NDSI11,NDSI12,NDSI13,NDSI14,NDSI15,NDSI16,NDSI17,NDSI18,NDSI19,NDSI20,NDSI21,NDSI22,NDSI23,NDSI24,NDSI25,NDSI26,NDSI27,NDSI28,NDSI29,NDSI30,NDSI31,NDSI32,NDSI33,NDSI34,NDSI35,NDSI36,NDSI37,NDSI38,NDSI39,NDSI40,NDSI41,NDVI1,NDVI2,NDVI3,NDVI4,NDVI5,NDVI6,NDVI7,NDVI8,NDVI9,NDVI10,NDVI11,NDVI12,NDVI13,NDVI14,NDVI15,NDVI16,NDVI17,NDVI18,NDWI1,NDWI2,NDWI3,NDWI4,NDWI5,NDWI6,NGRR_1,NGRR_2,NPQI,NPCI,OSAVI1,OSAVI2,OCAR,PRI1,PRI2,PRI3,PRI4,PRI5,PRI6,PRI7,PRI_CI,PSND1,PSND2,PSND3,PSND4,PSSRa,PSSRb,PSSRc2,PSSRchla,PKI,PBI,PSRI1,PSRI2,RARS,RARSc,RARSa,RARSb,RI_1dB,RI_2dB,RI_3dB,RI_half,RVI,RMSI,RBI,RE,REIP,R_M,RERI,RTVI,RVSI,RGI1,RGI2,RDVI1,RDVI2,SINDRI,SR1,SR2,SR3,SR4,SR5,SR6,SR7,SR8,SR9,SR10,SR11,SR12,SR13,SR14,SR15,SR16,SR17,SR18,SR19,SR20,SR21,SR22,SR23,SR24,SR25,SR26,SRPI,SRWI1,SRWI2,SRWI3,SRWI4,SB1,SB2,SAVI1,SAVI2,SAVI3,SAVI4,SPVI1,SPVI2,SIPI1,SIPI2,SIPI3,SIPI4,TCARI_OSAVI,TCARI1,TCARI2,TCARI3,TSAVI1,TSAVI2,TVI1,TVI2,VI,VSR,Vg1,Vg2,Vg3,WI1,WI2,WI3,WDVI1,WDVI2,WI_NDVI,YCAR,ZM,NDVI_WATER,SRI_WATER,EVI_WATER,ARVI_WATER,reNDVI_WATER,MreNDVI_WATER,MRESRI_WATER,VOG_REI_1_WATER,VOG_REI_2_WATER,VOG_REI_3_WATER,PSRI_WATER,WI_WATER,RG1_WATER,RGI2_WATER,RGI3_WATER,NDWGI1_WATER,NDWGI2_WATER,NMDGI_WATER,MSGR_WATER,TDGI_WATER,WLHGI_WATER,DWI_WATER,MSI_WATER,NDWI_1_WATER,SinNombreRatio_WATER,SRWI_WATER,WI_1_WATER,NDSI1_WATER,NDSI2_WATER,NDSI3_WATER,RSI1_WATER,RSI2_WATER,PRI_1_WATER,PRI_2_WATER,mNDVI_WATER,SIPI_WATER,NDVI_2_WATER,NDII_WATER,WABI_1_WATER,WABI_2_WATER,WABI_3_WATER,GNDVI_WATER,NDGI_WATER,NDWI_2_WATER,SRWI_2_WATER,GI_WATER,WI_2_WATER,MSI_2_WATER,WCRI_WATER,RGI_WATER,SRWI_3_WATER,NDVI_3_WATER,NDWI_3_WATER,SIWSI_WATER,NDII_2_WATER,ZTM_WATER,PRI_3_WATER,WABI_4_WATER,BRI_2_WATER,NGRR_1_WATER,NGRR_2_WATER,SR1_WATER,SR2_WATER,SR3_WATER,SR4_WATER,RBI_WATER,MSI_3_WATER,NDVI_4_WATER,NDVI_5_WATER,NDVI_6_WATER,SRWI_4_WATER,SRWI_5_WATER,SRWI_6_WATER,MTVI_WATER,TVI1_WATER,Crt_WATER,CITRA,PRI_NORM];
        indicesMap = containers.Map(keySet,valueSet)

        indicesMap('CITRA')
    end

    function [wavelength, data, new_wave, new_data] = LeerArchivo(nombreArchivo)
        [tar, ref]=importsvc(nombreArchivo);
        R_rel = relativereflectance(tar, ref);
        wavelength = R_rel.wavelength;
        data       = R_rel.data;
        new_wave = zeros(2500-340+1,1);
        new_data = zeros(2500-340+1,1);
    end

    function [new_wave, new_data] = Interpolar(wavelength,data,new_wave,new_data)
        for wave = 340:2500
        anterior = wavelength(wavelength<=wave);
        posterior = wavelength(wavelength>=wave);
        anterior = anterior(end);
        posterior = posterior(1);
        wavelength_real = [anterior posterior];
        anterior_wave = anterior;
        posterior_wave = posterior;

        anterior = data(wavelength<=wave  );
        posterior = data(wavelength>=wave);
        anterior = anterior(end);
        posterior = posterior(1);
        data_real = [anterior posterior];

        if anterior_wave ~= wave && posterior_wave ~= wave
            data_inter = interp1(wavelength_real,data_real,wave,'Linear');
            new_wave(wave-339,1) = wave;
            new_data(wave-339,1) = data_inter;
        elseif anterior_wave == wave || posterior_wave == wave
            new_wave(wave-339,1) = wavelength(wavelength==wave);
            new_data(wave-339,1) = data(wavelength==wave);
        end
        clearvars anterior posterior wavelength_real data_real anterior_wave posterior_wave;
        end
    end

    function [reflectancia] = CalculoReflectancia(wave_new,data_new)
        reflectancia = zeros(2150,1);
        for index = 1:2151
        reflectancia(index) = data_new(wave_new==349+index);
        disp(reflectancia(index))
        end
    end