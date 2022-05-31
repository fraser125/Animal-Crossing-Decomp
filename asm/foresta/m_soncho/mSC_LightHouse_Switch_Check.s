lbl_803EDB0C:
/* 803EDB0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EDB10  7C 08 02 A6 */	mflr r0
/* 803EDB14  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803EDB18  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EDB1C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803EDB20  38 61 00 08 */	addi r3, r1, 8
/* 803EDB24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803EDB28  3F E4 00 02 */	addis r31, r4, 2
/* 803EDB2C  7F E4 FB 78 */	mr r4, r31
/* 803EDB30  38 84 61 20 */	addi r4, r4, 0x6120
/* 803EDB34  48 01 97 01 */	bl lbRTC_TimeCopy
/* 803EDB38  38 61 00 08 */	addi r3, r1, 8
/* 803EDB3C  38 80 00 06 */	li r4, 6
/* 803EDB40  48 01 95 15 */	bl lbRTC_Sub_hh
/* 803EDB44  88 1F 41 6F */	lbz r0, 0x416f(r31)
/* 803EDB48  28 00 00 00 */	cmplwi r0, 0
/* 803EDB4C  40 82 00 0C */	bne lbl_803EDB58
/* 803EDB50  38 60 00 01 */	li r3, 1
/* 803EDB54  48 00 00 3C */	b lbl_803EDB90
lbl_803EDB58:
/* 803EDB58  38 61 00 08 */	addi r3, r1, 8
/* 803EDB5C  4B FF FA E1 */	bl mSC_LightHouse_get_period
/* 803EDB60  2C 03 00 01 */	cmpwi r3, 1
/* 803EDB64  41 82 00 0C */	beq lbl_803EDB70
/* 803EDB68  38 60 00 01 */	li r3, 1
/* 803EDB6C  48 00 00 24 */	b lbl_803EDB90
lbl_803EDB70:
/* 803EDB70  38 61 00 08 */	addi r3, r1, 8
/* 803EDB74  4B FF FB E1 */	bl mSC_LightHouse_day
/* 803EDB78  38 00 00 01 */	li r0, 1
/* 803EDB7C  88 9F 41 70 */	lbz r4, 0x4170(r31)
/* 803EDB80  7C 00 18 30 */	slw r0, r0, r3
/* 803EDB84  7C 83 00 38 */	and r3, r4, r0
/* 803EDB88  30 03 FF FF */	addic r0, r3, -1
/* 803EDB8C  7C 60 19 10 */	subfe r3, r0, r3
lbl_803EDB90:
/* 803EDB90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EDB94  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803EDB98  7C 08 03 A6 */	mtlr r0
/* 803EDB9C  38 21 00 20 */	addi r1, r1, 0x20
/* 803EDBA0  4E 80 00 20 */	blr 
