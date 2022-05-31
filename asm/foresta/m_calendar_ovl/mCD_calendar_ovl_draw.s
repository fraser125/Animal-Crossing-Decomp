lbl_805C7F74:
/* 805C7F74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C7F78  7C 08 02 A6 */	mflr r0
/* 805C7F7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C7F80  39 61 00 20 */	addi r11, r1, 0x20
/* 805C7F84  4B AD 2F 4D */	bl func_8009AED0
/* 805C7F88  7C 7D 1B 78 */	mr r29, r3
/* 805C7F8C  7C 9E 23 78 */	mr r30, r4
/* 805C7F90  83 83 00 2C */	lwz r28, 0x2c(r3)
/* 805C7F94  81 9C 08 44 */	lwz r12, 0x844(r28)
/* 805C7F98  83 FC 09 EC */	lwz r31, 0x9ec(r28)
/* 805C7F9C  7D 89 03 A6 */	mtctr r12
/* 805C7FA0  4E 80 04 21 */	bctrl 
/* 805C7FA4  80 1C 08 38 */	lwz r0, 0x838(r28)
/* 805C7FA8  2C 00 00 03 */	cmpwi r0, 3
/* 805C7FAC  41 82 00 F4 */	beq lbl_805C80A0
/* 805C7FB0  88 1F 10 55 */	lbz r0, 0x1055(r31)
/* 805C7FB4  28 00 00 01 */	cmplwi r0, 1
/* 805C7FB8  40 82 00 2C */	bne lbl_805C7FE4
/* 805C7FBC  3C 60 80 65 */	lis r3, lit_804@ha /* 0x8064AE4C@ha */
/* 805C7FC0  88 BF 10 56 */	lbz r5, 0x1056(r31)
/* 805C7FC4  C0 03 AE 4C */	lfs f0, lit_804@l(r3)  /* 0x8064AE4C@l */
/* 805C7FC8  7F A3 EB 78 */	mr r3, r29
/* 805C7FCC  C0 3C 08 4C */	lfs f1, 0x84c(r28)
/* 805C7FD0  7F C4 F3 78 */	mr r4, r30
/* 805C7FD4  C0 5C 08 50 */	lfs f2, 0x850(r28)
/* 805C7FD8  38 A5 FF FF */	addi r5, r5, -1
/* 805C7FDC  EC 21 00 28 */	fsubs f1, f1, f0
/* 805C7FE0  48 00 02 75 */	bl func_805C8254
lbl_805C7FE4:
/* 805C7FE4  88 1F 10 55 */	lbz r0, 0x1055(r31)
/* 805C7FE8  28 00 00 02 */	cmplwi r0, 2
/* 805C7FEC  40 82 00 2C */	bne lbl_805C8018
/* 805C7FF0  3C 60 80 65 */	lis r3, lit_804@ha /* 0x8064AE4C@ha */
/* 805C7FF4  88 BF 10 56 */	lbz r5, 0x1056(r31)
/* 805C7FF8  C0 23 AE 4C */	lfs f1, lit_804@l(r3)  /* 0x8064AE4C@l */
/* 805C7FFC  7F A3 EB 78 */	mr r3, r29
/* 805C8000  C0 1C 08 4C */	lfs f0, 0x84c(r28)
/* 805C8004  7F C4 F3 78 */	mr r4, r30
/* 805C8008  C0 5C 08 50 */	lfs f2, 0x850(r28)
/* 805C800C  38 A5 00 01 */	addi r5, r5, 1
/* 805C8010  EC 21 00 2A */	fadds f1, f1, f0
/* 805C8014  48 00 02 41 */	bl func_805C8254
lbl_805C8018:
/* 805C8018  C0 3C 08 4C */	lfs f1, 0x84c(r28)
/* 805C801C  7F A3 EB 78 */	mr r3, r29
/* 805C8020  C0 5C 08 50 */	lfs f2, 0x850(r28)
/* 805C8024  7F C4 F3 78 */	mr r4, r30
/* 805C8028  88 BF 10 56 */	lbz r5, 0x1056(r31)
/* 805C802C  48 00 02 29 */	bl func_805C8254
/* 805C8030  88 1F 10 55 */	lbz r0, 0x1055(r31)
/* 805C8034  28 00 00 04 */	cmplwi r0, 4
/* 805C8038  41 81 00 24 */	bgt lbl_805C805C
/* 805C803C  C0 5F 10 2C */	lfs f2, 0x102c(r31)
/* 805C8040  3C 60 80 65 */	lis r3, lit_538@ha /* 0x8064AE40@ha */
/* 805C8044  C0 1C 08 50 */	lfs f0, 0x850(r28)
/* 805C8048  7F C4 F3 78 */	mr r4, r30
/* 805C804C  C0 23 AE 40 */	lfs f1, lit_538@l(r3)  /* 0x8064AE40@l */
/* 805C8050  7F A3 EB 78 */	mr r3, r29
/* 805C8054  EC 42 00 28 */	fsubs f2, f2, f0
/* 805C8058  48 00 0C ED */	bl mCD_set_hyoji_dl
lbl_805C805C:
/* 805C805C  88 1F 10 55 */	lbz r0, 0x1055(r31)
/* 805C8060  28 00 00 03 */	cmplwi r0, 3
/* 805C8064  41 80 00 24 */	blt lbl_805C8088
/* 805C8068  C0 5F 10 30 */	lfs f2, 0x1030(r31)
/* 805C806C  3C 60 80 65 */	lis r3, lit_538@ha /* 0x8064AE40@ha */
/* 805C8070  C0 1C 08 50 */	lfs f0, 0x850(r28)
/* 805C8074  7F C4 F3 78 */	mr r4, r30
/* 805C8078  C0 23 AE 40 */	lfs f1, lit_538@l(r3)  /* 0x8064AE40@l */
/* 805C807C  7F A3 EB 78 */	mr r3, r29
/* 805C8080  EC 42 00 28 */	fsubs f2, f2, f0
/* 805C8084  48 00 0F 1D */	bl mCD_set_hyoji2_dl
lbl_805C8088:
/* 805C8088  88 1F 10 55 */	lbz r0, 0x1055(r31)
/* 805C808C  28 00 00 05 */	cmplwi r0, 5
/* 805C8090  40 82 00 10 */	bne lbl_805C80A0
/* 805C8094  7F A3 EB 78 */	mr r3, r29
/* 805C8098  7F C4 F3 78 */	mr r4, r30
/* 805C809C  48 00 10 11 */	bl mCD_disp_event_dl
lbl_805C80A0:
/* 805C80A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805C80A4  4B AD 2E 79 */	bl func_8009AF1C
/* 805C80A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C80AC  7C 08 03 A6 */	mtlr r0
/* 805C80B0  38 21 00 20 */	addi r1, r1, 0x20
/* 805C80B4  4E 80 00 20 */	blr 
