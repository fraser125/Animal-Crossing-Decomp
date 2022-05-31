lbl_80588FC8:
/* 80588FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80588FCC  7C 08 02 A6 */	mflr r0
/* 80588FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80588FD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80588FD8  7C 9F 23 78 */	mr r31, r4
/* 80588FDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80588FE0  7C 7E 1B 78 */	mr r30, r3
/* 80588FE4  38 7E 09 98 */	addi r3, r30, 0x998
/* 80588FE8  48 0A 54 29 */	bl sAdos_GetRadioCounter
/* 80588FEC  2C 03 FF FF */	cmpwi r3, -1
/* 80588FF0  41 82 01 0C */	beq lbl_805890FC
/* 80588FF4  80 9F 00 A0 */	lwz r4, 0xa0(r31)
/* 80588FF8  38 60 00 00 */	li r3, 0
/* 80588FFC  80 1E 09 AC */	lwz r0, 0x9ac(r30)
/* 80589000  7C A0 20 51 */	subf. r5, r0, r4
/* 80589004  41 82 00 14 */	beq lbl_80589018
/* 80589008  3C 00 80 00 */	lis r0, 0x8000
/* 8058900C  7C 05 00 40 */	cmplw r5, r0
/* 80589010  40 80 00 08 */	bge lbl_80589018
/* 80589014  38 60 00 01 */	li r3, 1
lbl_80589018:
/* 80589018  38 04 00 01 */	addi r0, r4, 1
/* 8058901C  90 1E 09 AC */	stw r0, 0x9ac(r30)
/* 80589020  88 1E 09 96 */	lbz r0, 0x996(r30)
/* 80589024  2C 00 00 02 */	cmpwi r0, 2
/* 80589028  41 82 00 94 */	beq lbl_805890BC
/* 8058902C  40 80 00 14 */	bge lbl_80589040
/* 80589030  2C 00 00 00 */	cmpwi r0, 0
/* 80589034  41 82 00 1C */	beq lbl_80589050
/* 80589038  40 80 00 58 */	bge lbl_80589090
/* 8058903C  48 00 00 B8 */	b lbl_805890F4
lbl_80589040:
/* 80589040  2C 00 00 04 */	cmpwi r0, 4
/* 80589044  41 82 00 58 */	beq lbl_8058909C
/* 80589048  40 80 00 AC */	bge lbl_805890F4
/* 8058904C  48 00 00 A0 */	b lbl_805890EC
lbl_80589050:
/* 80589050  2C 03 00 01 */	cmpwi r3, 1
/* 80589054  40 82 00 0C */	bne lbl_80589060
/* 80589058  7F C3 F3 78 */	mr r3, r30
/* 8058905C  4B FF FA 59 */	bl aTS0_ctrl_gymnastic_force
lbl_80589060:
/* 80589060  88 7E 09 98 */	lbz r3, 0x998(r30)
/* 80589064  88 1E 09 94 */	lbz r0, 0x994(r30)
/* 80589068  7C 63 07 74 */	extsb r3, r3
/* 8058906C  7C 00 07 74 */	extsb r0, r0
/* 80589070  7C 03 00 00 */	cmpw r3, r0
/* 80589074  40 82 00 10 */	bne lbl_80589084
/* 80589078  7F C3 F3 78 */	mr r3, r30
/* 8058907C  4B FF FA C1 */	bl aTS0_ctrl_gymnastic_sub0
/* 80589080  48 00 00 74 */	b lbl_805890F4
lbl_80589084:
/* 80589084  7F C3 F3 78 */	mr r3, r30
/* 80589088  4B FF FC 41 */	bl aTS0_ctrl_gymnastic_sub1
/* 8058908C  48 00 00 68 */	b lbl_805890F4
lbl_80589090:
/* 80589090  7F C3 F3 78 */	mr r3, r30
/* 80589094  4B FF FC A9 */	bl aTS0_ctrl_gymnastic_restart
/* 80589098  48 00 00 5C */	b lbl_805890F4
lbl_8058909C:
/* 8058909C  3C 60 80 65 */	lis r3, lit_625@ha /* 0x80649B2C@ha */
/* 805890A0  C0 3E 09 9C */	lfs f1, 0x99c(r30)
/* 805890A4  C0 03 9B 2C */	lfs f0, lit_625@l(r3)  /* 0x80649B2C@l */
/* 805890A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805890AC  40 80 00 48 */	bge lbl_805890F4
/* 805890B0  38 00 00 01 */	li r0, 1
/* 805890B4  98 1E 09 96 */	stb r0, 0x996(r30)
/* 805890B8  48 00 00 3C */	b lbl_805890F4
lbl_805890BC:
/* 805890BC  2C 03 00 01 */	cmpwi r3, 1
/* 805890C0  40 82 00 20 */	bne lbl_805890E0
/* 805890C4  7F C3 F3 78 */	mr r3, r30
/* 805890C8  4B FF F9 ED */	bl aTS0_ctrl_gymnastic_force
/* 805890CC  38 00 00 00 */	li r0, 0
/* 805890D0  7F C3 F3 78 */	mr r3, r30
/* 805890D4  98 1E 09 96 */	stb r0, 0x996(r30)
/* 805890D8  4B FF FA 65 */	bl aTS0_ctrl_gymnastic_sub0
/* 805890DC  48 00 00 18 */	b lbl_805890F4
lbl_805890E0:
/* 805890E0  7F C3 F3 78 */	mr r3, r30
/* 805890E4  4B FF FC CD */	bl aTS0_ctrl_gymnastic_failure_step1
/* 805890E8  48 00 00 0C */	b lbl_805890F4
lbl_805890EC:
/* 805890EC  7F C3 F3 78 */	mr r3, r30
/* 805890F0  4B FF FC E9 */	bl aTS0_ctrl_gymnastic_failure_step2
lbl_805890F4:
/* 805890F4  7F C3 F3 78 */	mr r3, r30
/* 805890F8  4B FF FD E5 */	bl aTS0_setup_anm_data
lbl_805890FC:
/* 805890FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80589100  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80589104  83 C1 00 08 */	lwz r30, 8(r1)
/* 80589108  7C 08 03 A6 */	mtlr r0
/* 8058910C  38 21 00 10 */	addi r1, r1, 0x10
/* 80589110  4E 80 00 20 */	blr 
