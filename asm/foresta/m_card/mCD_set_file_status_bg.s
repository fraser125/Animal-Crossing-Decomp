lbl_803F91FC:
/* 803F91FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F9200  7C 08 02 A6 */	mflr r0
/* 803F9204  3D 00 81 17 */	lis r8, l_mcd_bg_info@ha /* 0x811715BC@ha */
/* 803F9208  7C 87 23 78 */	mr r7, r4
/* 803F920C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F9210  39 28 15 BC */	addi r9, r8, l_mcd_bg_info@l /* 0x811715BC@l */
/* 803F9214  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803F9218  3B E0 00 00 */	li r31, 0
/* 803F921C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803F9220  7D 3E 4B 78 */	mr r30, r9
/* 803F9224  81 49 00 18 */	lwz r10, 0x18(r9)
/* 803F9228  2C 0A 00 00 */	cmpwi r10, 0
/* 803F922C  41 80 00 C0 */	blt lbl_803F92EC
/* 803F9230  2C 0A 00 05 */	cmpwi r10, 5
/* 803F9234  40 80 00 B8 */	bge lbl_803F92EC
/* 803F9238  3D 00 81 17 */	lis r8, work_p_1183@ha /* 0x811715FC@ha */
/* 803F923C  3C 80 80 66 */	lis r4, ssbg_proc@ha /* 0x8065E428@ha */
/* 803F9240  38 08 15 FC */	addi r0, r8, work_p_1183@l /* 0x811715FC@l */
/* 803F9244  90 01 00 08 */	stw r0, 8(r1)
/* 803F9248  39 00 00 00 */	li r8, 0
/* 803F924C  55 40 10 3A */	slwi r0, r10, 2
/* 803F9250  39 44 E4 28 */	addi r10, r4, ssbg_proc@l /* 0x8065E428@l */
/* 803F9254  91 01 00 0C */	stw r8, 0xc(r1)
/* 803F9258  7C A4 2B 78 */	mr r4, r5
/* 803F925C  7C C5 33 78 */	mr r5, r6
/* 803F9260  38 C0 00 00 */	li r6, 0
/* 803F9264  90 61 00 10 */	stw r3, 0x10(r1)
/* 803F9268  7D 23 4B 78 */	mr r3, r9
/* 803F926C  39 00 00 00 */	li r8, 0
/* 803F9270  39 20 00 00 */	li r9, 0
/* 803F9274  7D 8A 00 2E */	lwzx r12, r10, r0
/* 803F9278  39 40 00 00 */	li r10, 0
/* 803F927C  7D 89 03 A6 */	mtctr r12
/* 803F9280  4E 80 04 21 */	bctrl 
/* 803F9284  2C 03 00 01 */	cmpwi r3, 1
/* 803F9288  40 82 00 20 */	bne lbl_803F92A8
/* 803F928C  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 803F9290  2C 00 00 05 */	cmpwi r0, 5
/* 803F9294  40 82 00 14 */	bne lbl_803F92A8
/* 803F9298  7F C3 F3 78 */	mr r3, r30
/* 803F929C  4B FF E8 7D */	bl mCD_ClearCardBgInfo
/* 803F92A0  3B E0 00 01 */	li r31, 1
/* 803F92A4  48 00 00 18 */	b lbl_803F92BC
lbl_803F92A8:
/* 803F92A8  2C 03 FF FF */	cmpwi r3, -1
/* 803F92AC  40 82 00 10 */	bne lbl_803F92BC
/* 803F92B0  7F C3 F3 78 */	mr r3, r30
/* 803F92B4  4B FF E8 65 */	bl mCD_ClearCardBgInfo
/* 803F92B8  3B E0 FF FF */	li r31, -1
lbl_803F92BC:
/* 803F92BC  2C 1F 00 00 */	cmpwi r31, 0
/* 803F92C0  41 82 00 54 */	beq lbl_803F9314
/* 803F92C4  3C 60 81 17 */	lis r3, work_p_1183@ha /* 0x811715FC@ha */
/* 803F92C8  38 63 15 FC */	addi r3, r3, work_p_1183@l /* 0x811715FC@l */
/* 803F92CC  80 63 00 00 */	lwz r3, 0(r3)
/* 803F92D0  28 03 00 00 */	cmplwi r3, 0
/* 803F92D4  41 82 00 40 */	beq lbl_803F9314
/* 803F92D8  4B FC 31 DD */	bl zelda_free
/* 803F92DC  3C 60 81 17 */	lis r3, work_p_1183@ha /* 0x811715FC@ha */
/* 803F92E0  38 00 00 00 */	li r0, 0
/* 803F92E4  90 03 15 FC */	stw r0, work_p_1183@l(r3)  /* 0x811715FC@l */
/* 803F92E8  48 00 00 2C */	b lbl_803F9314
lbl_803F92EC:
/* 803F92EC  3C 60 81 17 */	lis r3, work_p_1183@ha /* 0x811715FC@ha */
/* 803F92F0  38 63 15 FC */	addi r3, r3, work_p_1183@l /* 0x811715FC@l */
/* 803F92F4  80 63 00 00 */	lwz r3, 0(r3)
/* 803F92F8  28 03 00 00 */	cmplwi r3, 0
/* 803F92FC  41 82 00 14 */	beq lbl_803F9310
/* 803F9300  4B FC 31 B5 */	bl zelda_free
/* 803F9304  3C 60 81 17 */	lis r3, work_p_1183@ha /* 0x811715FC@ha */
/* 803F9308  38 00 00 00 */	li r0, 0
/* 803F930C  90 03 15 FC */	stw r0, work_p_1183@l(r3)  /* 0x811715FC@l */
lbl_803F9310:
/* 803F9310  3B E0 FF FF */	li r31, -1
lbl_803F9314:
/* 803F9314  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F9318  7F E3 FB 78 */	mr r3, r31
/* 803F931C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803F9320  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803F9324  7C 08 03 A6 */	mtlr r0
/* 803F9328  38 21 00 20 */	addi r1, r1, 0x20
/* 803F932C  4E 80 00 20 */	blr 
