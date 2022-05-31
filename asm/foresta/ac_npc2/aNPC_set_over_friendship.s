lbl_8053DA18:
/* 8053DA18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8053DA1C  7C 08 02 A6 */	mflr r0
/* 8053DA20  90 01 00 24 */	stw r0, 0x24(r1)
/* 8053DA24  39 61 00 20 */	addi r11, r1, 0x20
/* 8053DA28  4B B5 D4 AD */	bl func_8009AED4
/* 8053DA2C  A0 03 00 06 */	lhz r0, 6(r3)
/* 8053DA30  7C 7D 1B 78 */	mr r29, r3
/* 8053DA34  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 8053DA38  2C 00 00 0D */	cmpwi r0, 0xd
/* 8053DA3C  41 82 00 64 */	beq lbl_8053DAA0
/* 8053DA40  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8053DA44  3B C0 00 00 */	li r30, 0
/* 8053DA48  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8053DA4C  3F E3 00 02 */	addis r31, r3, 2
/* 8053DA50  80 7F 61 3C */	lwz r3, 0x613c(r31)
/* 8053DA54  88 03 10 A2 */	lbz r0, 0x10a2(r3)
/* 8053DA58  2C 00 00 02 */	cmpwi r0, 2
/* 8053DA5C  41 82 00 14 */	beq lbl_8053DA70
/* 8053DA60  40 80 00 3C */	bge lbl_8053DA9C
/* 8053DA64  2C 00 00 01 */	cmpwi r0, 1
/* 8053DA68  40 80 00 10 */	bge lbl_8053DA78
/* 8053DA6C  48 00 00 30 */	b lbl_8053DA9C
lbl_8053DA70:
/* 8053DA70  3B C0 FF 00 */	li r30, -256
/* 8053DA74  48 00 00 28 */	b lbl_8053DA9C
lbl_8053DA78:
/* 8053DA78  80 7D 01 7C */	lwz r3, 0x17c(r29)
/* 8053DA7C  88 63 00 0D */	lbz r3, 0xd(r3)
/* 8053DA80  4B E9 44 E9 */	bl mNpc_GetLooks2Sex
/* 8053DA84  80 9F 61 3C */	lwz r4, 0x613c(r31)
/* 8053DA88  88 04 00 14 */	lbz r0, 0x14(r4)
/* 8053DA8C  7C 00 07 74 */	extsb r0, r0
/* 8053DA90  7C 00 18 00 */	cmpw r0, r3
/* 8053DA94  41 82 00 08 */	beq lbl_8053DA9C
/* 8053DA98  3B C0 01 00 */	li r30, 0x100
lbl_8053DA9C:
/* 8053DA9C  93 DD 08 64 */	stw r30, 0x864(r29)
lbl_8053DAA0:
/* 8053DAA0  39 61 00 20 */	addi r11, r1, 0x20
/* 8053DAA4  4B B5 D4 7D */	bl func_8009AF20
/* 8053DAA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8053DAAC  7C 08 03 A6 */	mtlr r0
/* 8053DAB0  38 21 00 20 */	addi r1, r1, 0x20
/* 8053DAB4  4E 80 00 20 */	blr 
