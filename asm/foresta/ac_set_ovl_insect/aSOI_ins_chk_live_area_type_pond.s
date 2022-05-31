lbl_8049BEEC:
/* 8049BEEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049BEF0  7C 08 02 A6 */	mflr r0
/* 8049BEF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049BEF8  39 61 00 20 */	addi r11, r1, 0x20
/* 8049BEFC  4B BF EF D9 */	bl func_8009AED4
/* 8049BF00  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8049BF04  7D 3D 4B 78 */	mr r29, r9
/* 8049BF08  80 6A 00 00 */	lwz r3, 0(r10)
/* 8049BF0C  3B E0 00 00 */	li r31, 0
/* 8049BF10  80 8A 00 04 */	lwz r4, 4(r10)
/* 8049BF14  4B F0 A3 D5 */	bl mFI_BkNum2BlockKind
/* 8049BF18  54 60 04 20 */	rlwinm r0, r3, 0, 0x10, 0x10
/* 8049BF1C  28 00 80 00 */	cmplwi r0, 0x8000
/* 8049BF20  41 82 00 28 */	beq lbl_8049BF48
/* 8049BF24  54 60 05 EE */	rlwinm r0, r3, 0, 0x17, 0x17
/* 8049BF28  28 00 01 00 */	cmplwi r0, 0x100
/* 8049BF2C  41 82 00 2C */	beq lbl_8049BF58
/* 8049BF30  54 60 06 30 */	rlwinm r0, r3, 0, 0x18, 0x18
/* 8049BF34  28 00 00 80 */	cmplwi r0, 0x80
/* 8049BF38  41 82 00 20 */	beq lbl_8049BF58
/* 8049BF3C  54 60 05 28 */	rlwinm r0, r3, 0, 0x14, 0x14
/* 8049BF40  28 00 08 00 */	cmplwi r0, 0x800
/* 8049BF44  41 82 00 14 */	beq lbl_8049BF58
lbl_8049BF48:
/* 8049BF48  7F A3 EB 78 */	mr r3, r29
/* 8049BF4C  7F C4 F3 78 */	mr r4, r30
/* 8049BF50  4B FF F7 65 */	bl aSOI_ins_field_attr_check_get
/* 8049BF54  7C 7F 1B 78 */	mr r31, r3
lbl_8049BF58:
/* 8049BF58  7F E3 FB 78 */	mr r3, r31
/* 8049BF5C  39 61 00 20 */	addi r11, r1, 0x20
/* 8049BF60  4B BF EF C1 */	bl func_8009AF20
/* 8049BF64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049BF68  7C 08 03 A6 */	mtlr r0
/* 8049BF6C  38 21 00 20 */	addi r1, r1, 0x20
/* 8049BF70  4E 80 00 20 */	blr 
