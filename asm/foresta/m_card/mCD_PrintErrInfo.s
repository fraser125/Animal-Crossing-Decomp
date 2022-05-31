lbl_803F769C:
/* 803F769C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F76A0  7C 08 02 A6 */	mflr r0
/* 803F76A4  3C 80 80 66 */	lis r4, data_8065E370@ha /* 0x8065E370@ha */
/* 803F76A8  38 A0 00 64 */	li r5, 0x64
/* 803F76AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F76B0  38 C0 00 FA */	li r6, 0xfa
/* 803F76B4  38 E0 00 FF */	li r7, 0xff
/* 803F76B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F76BC  7C 7F 1B 78 */	mr r31, r3
/* 803F76C0  93 C1 00 08 */	stw r30, 8(r1)
/* 803F76C4  3B C4 E3 70 */	addi r30, r4, data_8065E370@l /* 0x8065E370@l */
/* 803F76C8  38 80 00 FA */	li r4, 0xfa
/* 803F76CC  4B C6 3A D5 */	bl gfxprint_color
/* 803F76D0  7F E3 FB 78 */	mr r3, r31
/* 803F76D4  38 80 00 16 */	li r4, 0x16
/* 803F76D8  38 A0 00 03 */	li r5, 3
/* 803F76DC  4B C6 3B 35 */	bl gfxprint_locate8x8
/* 803F76E0  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 803F76E4  2C 00 00 00 */	cmpwi r0, 0
/* 803F76E8  41 82 00 14 */	beq lbl_803F76FC
/* 803F76EC  7F E3 FB 78 */	mr r3, r31
/* 803F76F0  38 9E 00 3C */	addi r4, r30, 0x3c
/* 803F76F4  4C C6 31 82 */	crclr 6
/* 803F76F8  4B C6 42 25 */	bl gfxprint_printf
lbl_803F76FC:
/* 803F76FC  38 7E 00 20 */	addi r3, r30, 0x20
/* 803F7700  80 03 00 04 */	lwz r0, 4(r3)
/* 803F7704  2C 00 00 00 */	cmpwi r0, 0
/* 803F7708  41 82 00 14 */	beq lbl_803F771C
/* 803F770C  7F E3 FB 78 */	mr r3, r31
/* 803F7710  38 9E 00 40 */	addi r4, r30, 0x40
/* 803F7714  4C C6 31 82 */	crclr 6
/* 803F7718  4B C6 42 05 */	bl gfxprint_printf
lbl_803F771C:
/* 803F771C  38 7E 00 20 */	addi r3, r30, 0x20
/* 803F7720  80 03 00 08 */	lwz r0, 8(r3)
/* 803F7724  2C 00 00 00 */	cmpwi r0, 0
/* 803F7728  41 82 00 14 */	beq lbl_803F773C
/* 803F772C  7F E3 FB 78 */	mr r3, r31
/* 803F7730  38 9E 00 44 */	addi r4, r30, 0x44
/* 803F7734  4C C6 31 82 */	crclr 6
/* 803F7738  4B C6 41 E5 */	bl gfxprint_printf
lbl_803F773C:
/* 803F773C  38 7E 00 20 */	addi r3, r30, 0x20
/* 803F7740  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803F7744  2C 00 00 00 */	cmpwi r0, 0
/* 803F7748  41 82 00 14 */	beq lbl_803F775C
/* 803F774C  7F E3 FB 78 */	mr r3, r31
/* 803F7750  38 9E 00 48 */	addi r4, r30, 0x48
/* 803F7754  4C C6 31 82 */	crclr 6
/* 803F7758  4B C6 41 C5 */	bl gfxprint_printf
lbl_803F775C:
/* 803F775C  38 7E 00 20 */	addi r3, r30, 0x20
/* 803F7760  80 03 00 10 */	lwz r0, 0x10(r3)
/* 803F7764  2C 00 00 00 */	cmpwi r0, 0
/* 803F7768  41 82 00 14 */	beq lbl_803F777C
/* 803F776C  7F E3 FB 78 */	mr r3, r31
/* 803F7770  38 9E 00 4C */	addi r4, r30, 0x4c
/* 803F7774  4C C6 31 82 */	crclr 6
/* 803F7778  4B C6 41 A5 */	bl gfxprint_printf
lbl_803F777C:
/* 803F777C  38 7E 00 20 */	addi r3, r30, 0x20
/* 803F7780  80 03 00 14 */	lwz r0, 0x14(r3)
/* 803F7784  2C 00 00 00 */	cmpwi r0, 0
/* 803F7788  41 82 00 14 */	beq lbl_803F779C
/* 803F778C  7F E3 FB 78 */	mr r3, r31
/* 803F7790  38 9E 00 50 */	addi r4, r30, 0x50
/* 803F7794  4C C6 31 82 */	crclr 6
/* 803F7798  4B C6 41 85 */	bl gfxprint_printf
lbl_803F779C:
/* 803F779C  38 7E 00 20 */	addi r3, r30, 0x20
/* 803F77A0  80 03 00 18 */	lwz r0, 0x18(r3)
/* 803F77A4  2C 00 00 00 */	cmpwi r0, 0
/* 803F77A8  41 82 00 14 */	beq lbl_803F77BC
/* 803F77AC  7F E3 FB 78 */	mr r3, r31
/* 803F77B0  38 9E 00 54 */	addi r4, r30, 0x54
/* 803F77B4  4C C6 31 82 */	crclr 6
/* 803F77B8  4B C6 41 65 */	bl gfxprint_printf
lbl_803F77BC:
/* 803F77BC  3C 60 81 17 */	lis r3, data_811715B8@ha /* 0x811715B8@ha */
/* 803F77C0  80 A3 15 B8 */	lwz r5, data_811715B8@l(r3)  /* 0x811715B8@l */
/* 803F77C4  2C 05 00 00 */	cmpwi r5, 0
/* 803F77C8  41 82 00 14 */	beq lbl_803F77DC
/* 803F77CC  7F E3 FB 78 */	mr r3, r31
/* 803F77D0  38 9E 00 58 */	addi r4, r30, 0x58
/* 803F77D4  4C C6 31 82 */	crclr 6
/* 803F77D8  4B C6 41 45 */	bl gfxprint_printf
lbl_803F77DC:
/* 803F77DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F77E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F77E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803F77E8  7C 08 03 A6 */	mtlr r0
/* 803F77EC  38 21 00 10 */	addi r1, r1, 0x10
/* 803F77F0  4E 80 00 20 */	blr 
