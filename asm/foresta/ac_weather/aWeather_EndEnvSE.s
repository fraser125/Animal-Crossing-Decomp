lbl_80601F4C:
/* 80601F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80601F50  7C 08 02 A6 */	mflr r0
/* 80601F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80601F58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80601F5C  7C 7F 1B 78 */	mr r31, r3
/* 80601F60  93 C1 00 08 */	stw r30, 8(r1)
/* 80601F64  A8 03 01 D4 */	lha r0, 0x1d4(r3)
/* 80601F68  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 80601F6C  48 02 C8 39 */	bl sAdo_GameframeEnd_Check
/* 80601F70  2C 03 00 01 */	cmpwi r3, 1
/* 80601F74  41 82 00 2C */	beq lbl_80601FA0
/* 80601F78  48 02 C8 2D */	bl sAdo_GameframeEnd_Check
/* 80601F7C  2C 03 00 02 */	cmpwi r3, 2
/* 80601F80  40 82 00 6C */	bne lbl_80601FEC
/* 80601F84  4B FF FD 95 */	bl aWeather_IsLand_Event_Check
/* 80601F88  2C 03 00 00 */	cmpwi r3, 0
/* 80601F8C  40 82 00 14 */	bne lbl_80601FA0
/* 80601F90  7F E3 FB 78 */	mr r3, r31
/* 80601F94  4B FF FD ED */	bl aWeather_Basement_Event_Check
/* 80601F98  2C 03 00 00 */	cmpwi r3, 0
/* 80601F9C  41 82 00 50 */	beq lbl_80601FEC
lbl_80601FA0:
/* 80601FA0  38 1E FF F9 */	addi r0, r30, -7
/* 80601FA4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80601FA8  28 00 00 02 */	cmplwi r0, 2
/* 80601FAC  40 81 00 1C */	ble lbl_80601FC8
/* 80601FB0  38 1E FF EE */	addi r0, r30, -18
/* 80601FB4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80601FB8  28 00 00 01 */	cmplwi r0, 1
/* 80601FBC  40 81 00 0C */	ble lbl_80601FC8
/* 80601FC0  28 1E 00 14 */	cmplwi r30, 0x14
/* 80601FC4  40 82 00 48 */	bne lbl_8060200C
lbl_80601FC8:
/* 80601FC8  7F C3 F3 78 */	mr r3, r30
/* 80601FCC  4B FF F9 21 */	bl aWeather_SysLevStop
/* 80601FD0  38 00 FC 18 */	li r0, -1000
/* 80601FD4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80601FD8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80601FDC  B0 1F 01 D4 */	sth r0, 0x1d4(r31)
/* 80601FE0  3C 63 00 03 */	addis r3, r3, 3
/* 80601FE4  B0 03 88 A2 */	sth r0, -0x775e(r3)
/* 80601FE8  48 00 00 24 */	b lbl_8060200C
lbl_80601FEC:
/* 80601FEC  48 02 C7 B9 */	bl sAdo_GameframeEnd_Check
/* 80601FF0  2C 03 00 02 */	cmpwi r3, 2
/* 80601FF4  40 82 00 18 */	bne lbl_8060200C
/* 80601FF8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80601FFC  A8 1F 01 D4 */	lha r0, 0x1d4(r31)
/* 80602000  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80602004  3C 63 00 03 */	addis r3, r3, 3
/* 80602008  B0 03 88 A2 */	sth r0, -0x775e(r3)
lbl_8060200C:
/* 8060200C  7F E3 FB 78 */	mr r3, r31
/* 80602010  4B FF F8 45 */	bl func_80601854
/* 80602014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80602018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060201C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80602020  7C 08 03 A6 */	mtlr r0
/* 80602024  38 21 00 10 */	addi r1, r1, 0x10
/* 80602028  4E 80 00 20 */	blr 
