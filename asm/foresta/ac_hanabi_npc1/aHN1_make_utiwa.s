lbl_80529164:
/* 80529164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529168  7C 08 02 A6 */	mflr r0
/* 8052916C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529170  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80529174  7C 7F 1B 78 */	mr r31, r3
/* 80529178  80 03 08 A0 */	lwz r0, 0x8a0(r3)
/* 8052917C  28 00 00 00 */	cmplwi r0, 0
/* 80529180  40 82 00 44 */	bne lbl_805291C4
/* 80529184  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80529188  7F E5 FB 78 */	mr r5, r31
/* 8052918C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80529190  7C 86 23 78 */	mr r6, r4
/* 80529194  3C 83 00 02 */	addis r4, r3, 2
/* 80529198  38 60 00 29 */	li r3, 0x29
/* 8052919C  81 24 60 A0 */	lwz r9, 0x60a0(r4)
/* 805291A0  38 80 00 04 */	li r4, 4
/* 805291A4  38 E0 FF FF */	li r7, -1
/* 805291A8  39 00 00 00 */	li r8, 0
/* 805291AC  81 89 00 00 */	lwz r12, 0(r9)
/* 805291B0  7D 89 03 A6 */	mtctr r12
/* 805291B4  4E 80 04 21 */	bctrl 
/* 805291B8  28 03 00 00 */	cmplwi r3, 0
/* 805291BC  41 82 00 08 */	beq lbl_805291C4
/* 805291C0  90 7F 08 A0 */	stw r3, 0x8a0(r31)
lbl_805291C4:
/* 805291C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805291C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805291CC  7C 08 03 A6 */	mtlr r0
/* 805291D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805291D4  4E 80 00 20 */	blr 
