lbl_805C81A0:
/* 805C81A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C81A4  7C 08 02 A6 */	mflr r0
/* 805C81A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C81AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C81B0  93 C1 00 08 */	stw r30, 8(r1)
/* 805C81B4  7C 7E 1B 78 */	mr r30, r3
/* 805C81B8  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805C81BC  80 1F 09 EC */	lwz r0, 0x9ec(r31)
/* 805C81C0  28 00 00 00 */	cmplwi r0, 0
/* 805C81C4  40 82 00 20 */	bne lbl_805C81E4
/* 805C81C8  38 60 10 60 */	li r3, 0x1060
/* 805C81CC  4B DF 42 91 */	bl zelda_malloc
/* 805C81D0  90 7F 09 EC */	stw r3, 0x9ec(r31)
/* 805C81D4  38 80 10 60 */	li r4, 0x1060
/* 805C81D8  38 A0 00 00 */	li r5, 0
/* 805C81DC  80 7F 09 EC */	lwz r3, 0x9ec(r31)
/* 805C81E0  4B DF 28 69 */	bl mem_clear
lbl_805C81E4:
/* 805C81E4  7F C3 F3 78 */	mr r3, r30
/* 805C81E8  4B FF FE F1 */	bl mCD_calendar_ovl_init
/* 805C81EC  7F C3 F3 78 */	mr r3, r30
/* 805C81F0  4B FF FE C9 */	bl mCD_calendar_ovl_set_proc
/* 805C81F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C81F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C81FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805C8200  7C 08 03 A6 */	mtlr r0
/* 805C8204  38 21 00 10 */	addi r1, r1, 0x10
/* 805C8208  4E 80 00 20 */	blr 
