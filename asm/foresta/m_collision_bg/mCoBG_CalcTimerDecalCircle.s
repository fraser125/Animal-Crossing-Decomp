lbl_8038DB64:
/* 8038DB64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038DB68  7C 08 02 A6 */	mflr r0
/* 8038DB6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038DB70  39 61 00 20 */	addi r11, r1, 0x20
/* 8038DB74  4B D0 D3 61 */	bl func_8009AED4
/* 8038DB78  3C 60 81 13 */	lis r3, data_81135548@ha /* 0x81135548@ha */
/* 8038DB7C  38 63 55 48 */	addi r3, r3, data_81135548@l /* 0x81135548@l */
/* 8038DB80  80 03 1E 04 */	lwz r0, 0x1e04(r3)
/* 8038DB84  3B C3 1E 08 */	addi r30, r3, 0x1e08
/* 8038DB88  3B A3 1E 68 */	addi r29, r3, 0x1e68
/* 8038DB8C  2C 00 00 00 */	cmpwi r0, 0
/* 8038DB90  40 81 00 28 */	ble lbl_8038DBB8
/* 8038DB94  3B E0 00 00 */	li r31, 0
lbl_8038DB98:
/* 8038DB98  7F C3 F3 78 */	mr r3, r30
/* 8038DB9C  7F A4 EB 78 */	mr r4, r29
/* 8038DBA0  4B FF FE BD */	bl mCoBG_CalcTimerDecalCircleOne
/* 8038DBA4  3B FF 00 01 */	addi r31, r31, 1
/* 8038DBA8  3B BD 00 20 */	addi r29, r29, 0x20
/* 8038DBAC  2C 1F 00 03 */	cmpwi r31, 3
/* 8038DBB0  3B DE 00 20 */	addi r30, r30, 0x20
/* 8038DBB4  41 80 FF E4 */	blt lbl_8038DB98
lbl_8038DBB8:
/* 8038DBB8  39 61 00 20 */	addi r11, r1, 0x20
/* 8038DBBC  4B D0 D3 65 */	bl func_8009AF20
/* 8038DBC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038DBC4  7C 08 03 A6 */	mtlr r0
/* 8038DBC8  38 21 00 20 */	addi r1, r1, 0x20
/* 8038DBCC  4E 80 00 20 */	blr 
