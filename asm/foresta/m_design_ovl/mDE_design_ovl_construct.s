lbl_805D78FC:
/* 805D78FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805D7900  7C 08 02 A6 */	mflr r0
/* 805D7904  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D7908  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805D790C  93 C1 00 08 */	stw r30, 8(r1)
/* 805D7910  7C 7E 1B 78 */	mr r30, r3
/* 805D7914  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 805D7918  80 1F 09 E0 */	lwz r0, 0x9e0(r31)
/* 805D791C  28 00 00 00 */	cmplwi r0, 0
/* 805D7920  40 82 00 24 */	bne lbl_805D7944
/* 805D7924  3C 60 81 21 */	lis r3, de_ovl_data@ha /* 0x81211018@ha */
/* 805D7928  38 80 06 E0 */	li r4, 0x6e0
/* 805D792C  38 63 10 18 */	addi r3, r3, de_ovl_data@l /* 0x81211018@l */
/* 805D7930  38 A0 00 00 */	li r5, 0
/* 805D7934  4B DE 31 15 */	bl mem_clear
/* 805D7938  3C 60 81 21 */	lis r3, de_ovl_data@ha /* 0x81211018@ha */
/* 805D793C  38 03 10 18 */	addi r0, r3, de_ovl_data@l /* 0x81211018@l */
/* 805D7940  90 1F 09 E0 */	stw r0, 0x9e0(r31)
lbl_805D7944:
/* 805D7944  7F C3 F3 78 */	mr r3, r30
/* 805D7948  4B FF FD 65 */	bl mDE_design_ovl_init
/* 805D794C  7F C3 F3 78 */	mr r3, r30
/* 805D7950  4B FF FD 3D */	bl mDE_design_ovl_set_proc
/* 805D7954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805D7958  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805D795C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805D7960  7C 08 03 A6 */	mtlr r0
/* 805D7964  38 21 00 10 */	addi r1, r1, 0x10
/* 805D7968  4E 80 00 20 */	blr 
