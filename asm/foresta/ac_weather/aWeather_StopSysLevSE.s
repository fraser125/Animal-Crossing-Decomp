lbl_80601B3C:
/* 80601B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80601B40  7C 08 02 A6 */	mflr r0
/* 80601B44  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80601B48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80601B4C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80601B50  3C 63 00 02 */	addis r3, r3, 2
/* 80601B54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80601B58  80 63 60 84 */	lwz r3, 0x6084(r3)
/* 80601B5C  83 E3 00 00 */	lwz r31, 0(r3)
/* 80601B60  A8 1F 01 DA */	lha r0, 0x1da(r31)
/* 80601B64  A8 7F 01 D4 */	lha r3, 0x1d4(r31)
/* 80601B68  2C 00 00 00 */	cmpwi r0, 0
/* 80601B6C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80601B70  40 82 00 40 */	bne lbl_80601BB0
/* 80601B74  38 03 FF F9 */	addi r0, r3, -7
/* 80601B78  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80601B7C  28 00 00 02 */	cmplwi r0, 2
/* 80601B80  40 81 00 1C */	ble lbl_80601B9C
/* 80601B84  38 03 FF EE */	addi r0, r3, -18
/* 80601B88  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80601B8C  28 00 00 01 */	cmplwi r0, 1
/* 80601B90  40 81 00 0C */	ble lbl_80601B9C
/* 80601B94  28 03 00 14 */	cmplwi r3, 0x14
/* 80601B98  40 82 00 08 */	bne lbl_80601BA0
lbl_80601B9C:
/* 80601B9C  4B FF FD 51 */	bl aWeather_SysLevStop
lbl_80601BA0:
/* 80601BA0  38 00 00 01 */	li r0, 1
/* 80601BA4  38 60 00 01 */	li r3, 1
/* 80601BA8  B0 1F 01 DA */	sth r0, 0x1da(r31)
/* 80601BAC  48 00 00 08 */	b lbl_80601BB4
lbl_80601BB0:
/* 80601BB0  38 60 00 00 */	li r3, 0
lbl_80601BB4:
/* 80601BB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80601BB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80601BBC  7C 08 03 A6 */	mtlr r0
/* 80601BC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80601BC4  4E 80 00 20 */	blr 
