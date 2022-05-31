lbl_805E78A4:
/* 805E78A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E78A8  7C 08 02 A6 */	mflr r0
/* 805E78AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E78B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E78B4  93 C1 00 08 */	stw r30, 8(r1)
/* 805E78B8  7C 7E 1B 78 */	mr r30, r3
/* 805E78BC  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805E78C0  80 1F 09 B4 */	lwz r0, 0x9b4(r31)
/* 805E78C4  28 00 00 00 */	cmplwi r0, 0
/* 805E78C8  40 82 00 34 */	bne lbl_805E78FC
/* 805E78CC  38 60 03 F8 */	li r3, 0x3f8
/* 805E78D0  4B DD 4B 8D */	bl zelda_malloc
/* 805E78D4  90 7F 09 B4 */	stw r3, 0x9b4(r31)
/* 805E78D8  38 80 03 F8 */	li r4, 0x3f8
/* 805E78DC  38 A0 00 00 */	li r5, 0
/* 805E78E0  80 7F 09 B4 */	lwz r3, 0x9b4(r31)
/* 805E78E4  4B DD 31 65 */	bl mem_clear
/* 805E78E8  3C 80 80 81 */	lis r4, data_8080DC80@ha /* 0x8080DC80@ha */
/* 805E78EC  80 7F 09 B4 */	lwz r3, 0x9b4(r31)
/* 805E78F0  38 04 DC 80 */	addi r0, r4, data_8080DC80@l /* 0x8080DC80@l */
/* 805E78F4  90 03 00 B8 */	stw r0, 0xb8(r3)
/* 805E78F8  4B FF F0 C9 */	bl mMP_map_draw_init
lbl_805E78FC:
/* 805E78FC  7F C3 F3 78 */	mr r3, r30
/* 805E7900  4B FF FF 35 */	bl mMP_map_ovl_init
/* 805E7904  7F C3 F3 78 */	mr r3, r30
/* 805E7908  4B FF FF 0D */	bl mMP_map_ovl_set_proc
/* 805E790C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E7910  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E7914  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E7918  7C 08 03 A6 */	mtlr r0
/* 805E791C  38 21 00 10 */	addi r1, r1, 0x10
/* 805E7920  4E 80 00 20 */	blr 
