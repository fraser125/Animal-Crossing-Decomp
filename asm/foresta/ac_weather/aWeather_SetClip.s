lbl_80602100:
/* 80602100  2C 04 00 00 */	cmpwi r4, 0
/* 80602104  41 82 00 1C */	beq lbl_80602120
/* 80602108  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8060210C  38 00 00 00 */	li r0, 0
/* 80602110  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80602114  3C 63 00 02 */	addis r3, r3, 2
/* 80602118  90 03 60 84 */	stw r0, 0x6084(r3)
/* 8060211C  4E 80 00 20 */	blr 
lbl_80602120:
/* 80602120  38 E3 01 A0 */	addi r7, r3, 0x1a0
/* 80602124  3C 80 80 60 */	lis r4, aWeather_RequestChangeWeather@ha /* 0x8060194C@ha */
/* 80602128  90 63 01 A0 */	stw r3, 0x1a0(r3)
/* 8060212C  38 04 19 4C */	addi r0, r4, aWeather_RequestChangeWeather@l /* 0x8060194C@l */
/* 80602130  3C 60 80 60 */	lis r3, aWeather_GetWeatherPrvNum@ha /* 0x80601A48@ha */
/* 80602134  3C 80 80 60 */	lis r4, aWeather_AbolishPrivate@ha /* 0x80601A78@ha */
/* 80602138  90 07 00 04 */	stw r0, 4(r7)
/* 8060213C  38 03 1A 48 */	addi r0, r3, aWeather_GetWeatherPrvNum@l /* 0x80601A48@l */
/* 80602140  3C 60 80 60 */	lis r3, aWeather_GetWeatherPrv@ha /* 0x80601AA4@ha */
/* 80602144  3C C0 80 60 */	lis r6, aWeather_StopSysLevSE@ha /* 0x80601B3C@ha */
/* 80602148  90 07 00 08 */	stw r0, 8(r7)
/* 8060214C  38 04 1A 78 */	addi r0, r4, aWeather_AbolishPrivate@l /* 0x80601A78@l */
/* 80602150  3C A0 80 60 */	lis r5, aWeather_StartSysLevSE@ha /* 0x80601BC8@ha */
/* 80602154  3C 80 80 60 */	lis r4, aWeather_ChangeWeatherInstance@ha /* 0x80601C88@ha */
/* 80602158  90 07 00 0C */	stw r0, 0xc(r7)
/* 8060215C  38 03 1A A4 */	addi r0, r3, aWeather_GetWeatherPrv@l /* 0x80601AA4@l */
/* 80602160  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80602164  38 C6 1B 3C */	addi r6, r6, aWeather_StopSysLevSE@l /* 0x80601B3C@l */
/* 80602168  90 07 00 10 */	stw r0, 0x10(r7)
/* 8060216C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80602170  38 A5 1B C8 */	addi r5, r5, aWeather_StartSysLevSE@l /* 0x80601BC8@l */
/* 80602174  38 04 1C 88 */	addi r0, r4, aWeather_ChangeWeatherInstance@l /* 0x80601C88@l */
/* 80602178  90 C7 00 14 */	stw r6, 0x14(r7)
/* 8060217C  3C 63 00 02 */	addis r3, r3, 2
/* 80602180  90 A7 00 18 */	stw r5, 0x18(r7)
/* 80602184  90 07 00 1C */	stw r0, 0x1c(r7)
/* 80602188  90 E3 60 84 */	stw r7, 0x6084(r3)
/* 8060218C  4E 80 00 20 */	blr 
