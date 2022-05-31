lbl_805FA494:
/* 805FA494  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FA498  7C 08 02 A6 */	mflr r0
/* 805FA49C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FA4A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805FA4A4  4B AA 0A 31 */	bl func_8009AED4
/* 805FA4A8  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805FA4AC  54 A0 07 BD */	rlwinm. r0, r5, 0, 0x1e, 0x1e
/* 805FA4B0  7C 9E 23 78 */	mr r30, r4
/* 805FA4B4  3B A0 00 00 */	li r29, 0
/* 805FA4B8  83 E6 09 80 */	lwz r31, 0x980(r6)
/* 805FA4BC  41 82 00 A8 */	beq lbl_805FA564
/* 805FA4C0  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FA4C4  2C 00 00 16 */	cmpwi r0, 0x16
/* 805FA4C8  41 82 00 0C */	beq lbl_805FA4D4
/* 805FA4CC  2C 00 00 12 */	cmpwi r0, 0x12
/* 805FA4D0  40 82 00 1C */	bne lbl_805FA4EC
lbl_805FA4D4:
/* 805FA4D4  38 60 00 01 */	li r3, 1
/* 805FA4D8  38 00 00 14 */	li r0, 0x14
/* 805FA4DC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 805FA4E0  3B A0 00 01 */	li r29, 1
/* 805FA4E4  90 1E 00 38 */	stw r0, 0x38(r30)
/* 805FA4E8  48 00 01 A0 */	b lbl_805FA688
lbl_805FA4EC:
/* 805FA4EC  2C 00 00 15 */	cmpwi r0, 0x15
/* 805FA4F0  40 82 01 98 */	bne lbl_805FA688
/* 805FA4F4  38 80 00 12 */	li r4, 0x12
/* 805FA4F8  38 00 00 02 */	li r0, 2
/* 805FA4FC  90 9E 00 38 */	stw r4, 0x38(r30)
/* 805FA500  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 805FA504  80 9E 00 40 */	lwz r4, 0x40(r30)
/* 805FA508  2C 04 00 02 */	cmpwi r4, 2
/* 805FA50C  40 80 00 10 */	bge lbl_805FA51C
/* 805FA510  38 00 00 00 */	li r0, 0
/* 805FA514  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805FA518  48 00 00 30 */	b lbl_805FA548
lbl_805FA51C:
/* 805FA51C  2C 04 00 04 */	cmpwi r4, 4
/* 805FA520  40 80 00 10 */	bge lbl_805FA530
/* 805FA524  38 00 00 01 */	li r0, 1
/* 805FA528  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805FA52C  48 00 00 1C */	b lbl_805FA548
lbl_805FA530:
/* 805FA530  2C 04 00 06 */	cmpwi r4, 6
/* 805FA534  40 80 00 0C */	bge lbl_805FA540
/* 805FA538  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805FA53C  48 00 00 0C */	b lbl_805FA548
lbl_805FA540:
/* 805FA540  38 00 00 03 */	li r0, 3
/* 805FA544  90 1E 00 40 */	stw r0, 0x40(r30)
lbl_805FA548:
/* 805FA548  4B FF 50 9D */	bl func_805EF5E4
/* 805FA54C  2C 03 00 00 */	cmpwi r3, 0
/* 805FA550  40 82 00 0C */	bne lbl_805FA55C
/* 805FA554  38 00 00 05 */	li r0, 5
/* 805FA558  B0 1F 02 32 */	sth r0, 0x232(r31)
lbl_805FA55C:
/* 805FA55C  3B A0 00 01 */	li r29, 1
/* 805FA560  48 00 01 28 */	b lbl_805FA688
lbl_805FA564:
/* 805FA564  54 A0 07 7B */	rlwinm. r0, r5, 0, 0x1d, 0x1d
/* 805FA568  41 82 00 2C */	beq lbl_805FA594
/* 805FA56C  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FA570  2C 00 00 16 */	cmpwi r0, 0x16
/* 805FA574  40 82 01 14 */	bne lbl_805FA688
/* 805FA578  38 60 00 12 */	li r3, 0x12
/* 805FA57C  38 00 00 00 */	li r0, 0
/* 805FA580  90 7E 00 38 */	stw r3, 0x38(r30)
/* 805FA584  3B A0 00 01 */	li r29, 1
/* 805FA588  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805FA58C  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 805FA590  48 00 00 F8 */	b lbl_805FA688
lbl_805FA594:
/* 805FA594  54 A0 07 39 */	rlwinm. r0, r5, 0, 0x1c, 0x1c
/* 805FA598  41 82 00 38 */	beq lbl_805FA5D0
/* 805FA59C  4B FF 50 49 */	bl func_805EF5E4
/* 805FA5A0  2C 03 00 00 */	cmpwi r3, 0
/* 805FA5A4  41 82 00 E4 */	beq lbl_805FA688
/* 805FA5A8  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FA5AC  2C 00 00 16 */	cmpwi r0, 0x16
/* 805FA5B0  41 82 00 D8 */	beq lbl_805FA688
/* 805FA5B4  38 60 00 16 */	li r3, 0x16
/* 805FA5B8  38 00 00 00 */	li r0, 0
/* 805FA5BC  90 7E 00 38 */	stw r3, 0x38(r30)
/* 805FA5C0  3B A0 00 01 */	li r29, 1
/* 805FA5C4  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 805FA5C8  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805FA5CC  48 00 00 BC */	b lbl_805FA688
lbl_805FA5D0:
/* 805FA5D0  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 805FA5D4  41 82 00 B4 */	beq lbl_805FA688
/* 805FA5D8  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805FA5DC  2C 00 00 14 */	cmpwi r0, 0x14
/* 805FA5E0  40 82 00 1C */	bne lbl_805FA5FC
/* 805FA5E4  38 60 00 12 */	li r3, 0x12
/* 805FA5E8  38 00 00 00 */	li r0, 0
/* 805FA5EC  90 7E 00 38 */	stw r3, 0x38(r30)
/* 805FA5F0  3B A0 00 01 */	li r29, 1
/* 805FA5F4  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 805FA5F8  48 00 00 90 */	b lbl_805FA688
lbl_805FA5FC:
/* 805FA5FC  2C 00 00 16 */	cmpwi r0, 0x16
/* 805FA600  40 82 00 14 */	bne lbl_805FA614
/* 805FA604  38 00 00 15 */	li r0, 0x15
/* 805FA608  3B A0 00 01 */	li r29, 1
/* 805FA60C  90 1E 00 38 */	stw r0, 0x38(r30)
/* 805FA610  48 00 00 78 */	b lbl_805FA688
lbl_805FA614:
/* 805FA614  2C 00 00 12 */	cmpwi r0, 0x12
/* 805FA618  40 82 00 70 */	bne lbl_805FA688
/* 805FA61C  38 80 00 15 */	li r4, 0x15
/* 805FA620  38 00 00 00 */	li r0, 0
/* 805FA624  90 9E 00 38 */	stw r4, 0x38(r30)
/* 805FA628  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 805FA62C  80 9E 00 40 */	lwz r4, 0x40(r30)
/* 805FA630  2C 04 00 00 */	cmpwi r4, 0
/* 805FA634  40 82 00 0C */	bne lbl_805FA640
/* 805FA638  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805FA63C  48 00 00 34 */	b lbl_805FA670
lbl_805FA640:
/* 805FA640  2C 04 00 01 */	cmpwi r4, 1
/* 805FA644  40 82 00 10 */	bne lbl_805FA654
/* 805FA648  38 00 00 02 */	li r0, 2
/* 805FA64C  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805FA650  48 00 00 20 */	b lbl_805FA670
lbl_805FA654:
/* 805FA654  2C 04 00 02 */	cmpwi r4, 2
/* 805FA658  40 82 00 10 */	bne lbl_805FA668
/* 805FA65C  38 00 00 04 */	li r0, 4
/* 805FA660  90 1E 00 40 */	stw r0, 0x40(r30)
/* 805FA664  48 00 00 0C */	b lbl_805FA670
lbl_805FA668:
/* 805FA668  38 00 00 06 */	li r0, 6
/* 805FA66C  90 1E 00 40 */	stw r0, 0x40(r30)
lbl_805FA670:
/* 805FA670  4B FF 4F 75 */	bl func_805EF5E4
/* 805FA674  2C 03 00 00 */	cmpwi r3, 0
/* 805FA678  40 82 00 0C */	bne lbl_805FA684
/* 805FA67C  38 00 00 04 */	li r0, 4
/* 805FA680  B0 1F 02 32 */	sth r0, 0x232(r31)
lbl_805FA684:
/* 805FA684  3B A0 00 01 */	li r29, 1
lbl_805FA688:
/* 805FA688  7F A3 EB 78 */	mr r3, r29
/* 805FA68C  39 61 00 20 */	addi r11, r1, 0x20
/* 805FA690  4B AA 08 91 */	bl func_8009AF20
/* 805FA694  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FA698  7C 08 03 A6 */	mtlr r0
/* 805FA69C  38 21 00 20 */	addi r1, r1, 0x20
/* 805FA6A0  4E 80 00 20 */	blr 
