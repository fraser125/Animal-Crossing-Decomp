lbl_8038CEF4:
/* 8038CEF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8038CEF8  7C 08 02 A6 */	mflr r0
/* 8038CEFC  2C 03 FF FF */	cmpwi r3, -1
/* 8038CF00  3C 80 81 13 */	lis r4, l_mBgMgr@ha /* 0x811371E8@ha */
/* 8038CF04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8038CF08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8038CF0C  93 C1 00 08 */	stw r30, 8(r1)
/* 8038CF10  3B C4 71 E8 */	addi r30, r4, l_mBgMgr@l /* 0x811371E8@l */
/* 8038CF14  40 81 00 4C */	ble lbl_8038CF60
/* 8038CF18  2C 03 00 40 */	cmpwi r3, 0x40
/* 8038CF1C  40 80 00 44 */	bge lbl_8038CF60
/* 8038CF20  80 1E 01 00 */	lwz r0, 0x100(r30)
/* 8038CF24  2C 00 00 00 */	cmpwi r0, 0
/* 8038CF28  41 82 00 38 */	beq lbl_8038CF60
/* 8038CF2C  2C 03 00 40 */	cmpwi r3, 0x40
/* 8038CF30  40 80 00 30 */	bge lbl_8038CF60
/* 8038CF34  54 7F 10 3A */	slwi r31, r3, 2
/* 8038CF38  7C 7E F8 2E */	lwzx r3, r30, r31
/* 8038CF3C  28 03 00 00 */	cmplwi r3, 0
/* 8038CF40  41 82 00 20 */	beq lbl_8038CF60
/* 8038CF44  38 80 00 28 */	li r4, 0x28
/* 8038CF48  4B CD 01 21 */	bl bzero
/* 8038CF4C  38 00 00 00 */	li r0, 0
/* 8038CF50  7C 1E F9 2E */	stwx r0, r30, r31
/* 8038CF54  80 7E 01 00 */	lwz r3, 0x100(r30)
/* 8038CF58  38 03 FF FF */	addi r0, r3, -1
/* 8038CF5C  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_8038CF60:
/* 8038CF60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8038CF64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8038CF68  83 C1 00 08 */	lwz r30, 8(r1)
/* 8038CF6C  7C 08 03 A6 */	mtlr r0
/* 8038CF70  38 21 00 10 */	addi r1, r1, 0x10
/* 8038CF74  4E 80 00 20 */	blr 
