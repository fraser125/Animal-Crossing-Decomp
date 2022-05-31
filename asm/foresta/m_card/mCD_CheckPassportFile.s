lbl_803FE7C8:
/* 803FE7C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FE7CC  7C 08 02 A6 */	mflr r0
/* 803FE7D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FE7D4  39 61 00 20 */	addi r11, r1, 0x20
/* 803FE7D8  4B C9 C6 FD */	bl func_8009AED4
/* 803FE7DC  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000A000@ha */
/* 803FE7E0  3B C0 FF FF */	li r30, -1
/* 803FE7E4  38 63 A0 00 */	addi r3, r3, 0xA000 /* 0x0000A000@l */
/* 803FE7E8  4B FF 90 0D */	bl mCD_malloc_32
/* 803FE7EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 803FE7F0  41 82 00 40 */	beq lbl_803FE830
/* 803FE7F4  3B A0 00 00 */	li r29, 0
lbl_803FE7F8:
/* 803FE7F8  7F A3 EB 78 */	mr r3, r29
/* 803FE7FC  7F E4 FB 78 */	mr r4, r31
/* 803FE800  4B FF C5 F1 */	bl mCD_CheckPassportFile_slot
/* 803FE804  2C 03 00 01 */	cmpwi r3, 1
/* 803FE808  40 82 00 0C */	bne lbl_803FE814
/* 803FE80C  7F BE EB 78 */	mr r30, r29
/* 803FE810  48 00 00 10 */	b lbl_803FE820
lbl_803FE814:
/* 803FE814  3B BD 00 01 */	addi r29, r29, 1
/* 803FE818  2C 1D 00 02 */	cmpwi r29, 2
/* 803FE81C  41 80 FF DC */	blt lbl_803FE7F8
lbl_803FE820:
/* 803FE820  28 1F 00 00 */	cmplwi r31, 0
/* 803FE824  41 82 00 0C */	beq lbl_803FE830
/* 803FE828  7F E3 FB 78 */	mr r3, r31
/* 803FE82C  4B FB DC 89 */	bl zelda_free
lbl_803FE830:
/* 803FE830  7F C3 F3 78 */	mr r3, r30
/* 803FE834  39 61 00 20 */	addi r11, r1, 0x20
/* 803FE838  4B C9 C6 E9 */	bl func_8009AF20
/* 803FE83C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FE840  7C 08 03 A6 */	mtlr r0
/* 803FE844  38 21 00 20 */	addi r1, r1, 0x20
/* 803FE848  4E 80 00 20 */	blr 
