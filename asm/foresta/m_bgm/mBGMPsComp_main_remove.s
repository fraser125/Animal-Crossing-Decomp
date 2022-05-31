lbl_8037AB58:
/* 8037AB58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037AB5C  7C 08 02 A6 */	mflr r0
/* 8037AB60  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037AB64  39 61 00 20 */	addi r11, r1, 0x20
/* 8037AB68  4B D2 03 6D */	bl func_8009AED4
/* 8037AB6C  7C 7D 1B 78 */	mr r29, r3
/* 8037AB70  80 63 01 18 */	lwz r3, 0x118(r3)
/* 8037AB74  3B C3 FF FF */	addi r30, r3, -1
/* 8037AB78  1C 1E 00 14 */	mulli r0, r30, 0x14
/* 8037AB7C  7F FD 02 14 */	add r31, r29, r0
/* 8037AB80  48 00 00 2C */	b lbl_8037ABAC
lbl_8037AB84:
/* 8037AB84  A0 7F 00 0E */	lhz r3, 0xe(r31)
/* 8037AB88  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8037AB8C  41 82 00 18 */	beq lbl_8037ABA4
/* 8037AB90  54 60 04 3C */	rlwinm r0, r3, 0, 0x10, 0x1e
/* 8037AB94  7F A3 EB 78 */	mr r3, r29
/* 8037AB98  B0 1F 00 0E */	sth r0, 0xe(r31)
/* 8037AB9C  7F C4 F3 78 */	mr r4, r30
/* 8037ABA0  4B FF FC 01 */	bl mBGMPsComp_ps_remove
lbl_8037ABA4:
/* 8037ABA4  3B DE FF FF */	addi r30, r30, -1
/* 8037ABA8  3B FF FF EC */	addi r31, r31, -20
lbl_8037ABAC:
/* 8037ABAC  2C 1E 00 00 */	cmpwi r30, 0
/* 8037ABB0  40 80 FF D4 */	bge lbl_8037AB84
/* 8037ABB4  39 61 00 20 */	addi r11, r1, 0x20
/* 8037ABB8  4B D2 03 69 */	bl func_8009AF20
/* 8037ABBC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037ABC0  7C 08 03 A6 */	mtlr r0
/* 8037ABC4  38 21 00 20 */	addi r1, r1, 0x20
/* 8037ABC8  4E 80 00 20 */	blr 
