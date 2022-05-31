lbl_8037B7F0:
/* 8037B7F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037B7F4  7C 08 02 A6 */	mflr r0
/* 8037B7F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037B7FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8037B800  4B D1 F6 D1 */	bl func_8009AED0
/* 8037B804  7C 7C 1B 78 */	mr r28, r3
/* 8037B808  3B C0 00 00 */	li r30, 0
/* 8037B80C  83 A3 01 18 */	lwz r29, 0x118(r3)
/* 8037B810  7F 9F E3 78 */	mr r31, r28
/* 8037B814  48 00 00 74 */	b lbl_8037B888
lbl_8037B818:
/* 8037B818  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 8037B81C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8037B820  41 82 00 60 */	beq lbl_8037B880
/* 8037B824  7F 83 E3 78 */	mr r3, r28
/* 8037B828  4B FF F2 1D */	bl mBGMPsComp_execute_ps_pos_get
/* 8037B82C  7C 03 F0 00 */	cmpw r3, r30
/* 8037B830  40 80 00 2C */	bge lbl_8037B85C
/* 8037B834  2C 03 00 00 */	cmpwi r3, 0
/* 8037B838  41 80 00 24 */	blt lbl_8037B85C
/* 8037B83C  1C 03 00 14 */	mulli r0, r3, 0x14
/* 8037B840  7C 7C 02 14 */	add r3, r28, r0
/* 8037B844  88 03 00 00 */	lbz r0, 0(r3)
/* 8037B848  28 00 00 7F */	cmplwi r0, 0x7f
/* 8037B84C  41 82 00 10 */	beq lbl_8037B85C
/* 8037B850  A0 03 00 0E */	lhz r0, 0xe(r3)
/* 8037B854  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8037B858  41 82 00 10 */	beq lbl_8037B868
lbl_8037B85C:
/* 8037B85C  48 2B 2C D5 */	bl sAdo_BgmFadeoutCheck
/* 8037B860  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8037B864  41 82 00 1C */	beq lbl_8037B880
lbl_8037B868:
/* 8037B868  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 8037B86C  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 8037B870  B0 1F 00 0E */	sth r0, 0xe(r31)
/* 8037B874  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 8037B878  60 00 00 01 */	ori r0, r0, 1
/* 8037B87C  B0 1F 00 0E */	sth r0, 0xe(r31)
lbl_8037B880:
/* 8037B880  3B DE 00 01 */	addi r30, r30, 1
/* 8037B884  3B FF 00 14 */	addi r31, r31, 0x14
lbl_8037B888:
/* 8037B888  7C 1E E8 00 */	cmpw r30, r29
/* 8037B88C  41 80 FF 8C */	blt lbl_8037B818
/* 8037B890  39 61 00 20 */	addi r11, r1, 0x20
/* 8037B894  4B D1 F6 89 */	bl func_8009AF1C
/* 8037B898  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037B89C  7C 08 03 A6 */	mtlr r0
/* 8037B8A0  38 21 00 20 */	addi r1, r1, 0x20
/* 8037B8A4  4E 80 00 20 */	blr 
