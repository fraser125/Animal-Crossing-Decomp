lbl_8058BA30:
/* 8058BA30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058BA34  7C 08 02 A6 */	mflr r0
/* 8058BA38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058BA3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058BA40  7C 9F 23 78 */	mr r31, r4
/* 8058BA44  38 80 00 08 */	li r4, 8
/* 8058BA48  93 C1 00 08 */	stw r30, 8(r1)
/* 8058BA4C  7C 7E 1B 78 */	mr r30, r3
/* 8058BA50  38 60 00 0F */	li r3, 0xf
/* 8058BA54  4B E1 23 79 */	bl mEv_get_save_area
/* 8058BA58  A0 03 00 02 */	lhz r0, 2(r3)
/* 8058BA5C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 8058BA60  41 82 00 20 */	beq lbl_8058BA80
/* 8058BA64  A8 BE 09 A2 */	lha r5, 0x9a2(r30)
/* 8058BA68  7F C3 F3 78 */	mr r3, r30
/* 8058BA6C  7F E4 FB 78 */	mr r4, r31
/* 8058BA70  38 05 00 01 */	addi r0, r5, 1
/* 8058BA74  B0 1E 09 A2 */	sth r0, 0x9a2(r30)
/* 8058BA78  7C 05 07 34 */	extsh r5, r0
/* 8058BA7C  48 00 05 25 */	bl aTKN0_setup_think_proc
lbl_8058BA80:
/* 8058BA80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058BA84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058BA88  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058BA8C  7C 08 03 A6 */	mtlr r0
/* 8058BA90  38 21 00 10 */	addi r1, r1, 0x10
/* 8058BA94  4E 80 00 20 */	blr 
