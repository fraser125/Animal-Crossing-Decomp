lbl_80601BC8:
/* 80601BC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80601BCC  7C 08 02 A6 */	mflr r0
/* 80601BD0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80601BD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80601BD8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80601BDC  3C 83 00 02 */	addis r4, r3, 2
/* 80601BE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80601BE4  80 64 60 84 */	lwz r3, 0x6084(r4)
/* 80601BE8  83 E3 00 00 */	lwz r31, 0(r3)
/* 80601BEC  A8 1F 01 DA */	lha r0, 0x1da(r31)
/* 80601BF0  2C 00 00 01 */	cmpwi r0, 1
/* 80601BF4  40 82 00 7C */	bne lbl_80601C70
/* 80601BF8  88 64 0F 19 */	lbz r3, 0xf19(r4)
/* 80601BFC  54 60 E7 3E */	rlwinm r0, r3, 0x1c, 0x1c, 0x1f
/* 80601C00  2C 00 00 01 */	cmpwi r0, 1
/* 80601C04  40 82 00 64 */	bne lbl_80601C68
/* 80601C08  54 60 07 3E */	clrlwi r0, r3, 0x1c
/* 80601C0C  2C 00 00 02 */	cmpwi r0, 2
/* 80601C10  41 82 00 34 */	beq lbl_80601C44
/* 80601C14  40 80 00 10 */	bge lbl_80601C24
/* 80601C18  2C 00 00 01 */	cmpwi r0, 1
/* 80601C1C  40 80 00 14 */	bge lbl_80601C30
/* 80601C20  48 00 00 48 */	b lbl_80601C68
lbl_80601C24:
/* 80601C24  2C 00 00 04 */	cmpwi r0, 4
/* 80601C28  40 80 00 40 */	bge lbl_80601C68
/* 80601C2C  48 00 00 2C */	b lbl_80601C58
lbl_80601C30:
/* 80601C30  38 60 00 07 */	li r3, 7
/* 80601C34  4B FF FC 99 */	bl aWeather_SysLevStart
/* 80601C38  38 00 00 07 */	li r0, 7
/* 80601C3C  B0 1F 01 D4 */	sth r0, 0x1d4(r31)
/* 80601C40  48 00 00 28 */	b lbl_80601C68
lbl_80601C44:
/* 80601C44  38 60 00 08 */	li r3, 8
/* 80601C48  4B FF FC 85 */	bl aWeather_SysLevStart
/* 80601C4C  38 00 00 08 */	li r0, 8
/* 80601C50  B0 1F 01 D4 */	sth r0, 0x1d4(r31)
/* 80601C54  48 00 00 14 */	b lbl_80601C68
lbl_80601C58:
/* 80601C58  38 60 00 09 */	li r3, 9
/* 80601C5C  4B FF FC 71 */	bl aWeather_SysLevStart
/* 80601C60  38 00 00 09 */	li r0, 9
/* 80601C64  B0 1F 01 D4 */	sth r0, 0x1d4(r31)
lbl_80601C68:
/* 80601C68  38 00 00 02 */	li r0, 2
/* 80601C6C  B0 1F 01 DA */	sth r0, 0x1da(r31)
lbl_80601C70:
/* 80601C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80601C74  38 60 00 00 */	li r3, 0
/* 80601C78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80601C7C  7C 08 03 A6 */	mtlr r0
/* 80601C80  38 21 00 10 */	addi r1, r1, 0x10
/* 80601C84  4E 80 00 20 */	blr 
