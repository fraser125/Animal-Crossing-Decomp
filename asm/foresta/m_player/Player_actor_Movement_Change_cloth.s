lbl_805044A8:
/* 805044A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805044AC  7C 08 02 A6 */	mflr r0
/* 805044B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805044B4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805044B8  7C 7F 1B 78 */	mr r31, r3
/* 805044BC  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 805044C0  2C 00 00 49 */	cmpwi r0, 0x49
/* 805044C4  41 82 00 10 */	beq lbl_805044D4
/* 805044C8  38 80 00 00 */	li r4, 0
/* 805044CC  4B FD 15 F1 */	bl Player_actor_Movement_Base_Stop
/* 805044D0  48 00 00 AC */	b lbl_8050457C
lbl_805044D4:
/* 805044D4  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 805044D8  3C A0 80 64 */	lis r5, lit_1028@ha /* 0x806469FC@ha */
/* 805044DC  38 C3 69 F4 */	addi r6, r3, lit_1027@l /* 0x806469F4@l */
/* 805044E0  C8 65 69 FC */	lfd f3, lit_1028@l(r5)  /* 0x806469FC@l */
/* 805044E4  C8 A6 00 00 */	lfd f5, 0(r6)
/* 805044E8  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 805044EC  C8 86 00 00 */	lfd f4, 0(r6)
/* 805044F0  38 A0 09 C4 */	li r5, 0x9c4
/* 805044F4  FC 40 28 34 */	frsqrte f2, f5
/* 805044F8  A8 84 1B C2 */	lha r4, 0x1bc2(r4)
/* 805044FC  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 80504500  38 7F 00 DE */	addi r3, r31, 0xde
/* 80504504  3C 84 00 01 */	addis r4, r4, 1
/* 80504508  38 C0 00 32 */	li r6, 0x32
/* 8050450C  FC 22 00 B2 */	fmul f1, f2, f2
/* 80504510  38 04 80 00 */	addi r0, r4, -32768
/* 80504514  7C 04 07 34 */	extsh r4, r0
/* 80504518  FC 44 00 B2 */	fmul f2, f4, f2
/* 8050451C  FC 25 00 72 */	fmul f1, f5, f1
/* 80504520  FC 23 08 28 */	fsub f1, f3, f1
/* 80504524  FC 42 00 72 */	fmul f2, f2, f1
/* 80504528  FC 22 00 B2 */	fmul f1, f2, f2
/* 8050452C  FC 44 00 B2 */	fmul f2, f4, f2
/* 80504530  FC 25 00 72 */	fmul f1, f5, f1
/* 80504534  FC 23 08 28 */	fsub f1, f3, f1
/* 80504538  FC 42 00 72 */	fmul f2, f2, f1
/* 8050453C  FC 22 00 B2 */	fmul f1, f2, f2
/* 80504540  FC 44 00 B2 */	fmul f2, f4, f2
/* 80504544  FC 25 00 72 */	fmul f1, f5, f1
/* 80504548  FC 23 08 28 */	fsub f1, f3, f1
/* 8050454C  FC 22 00 72 */	fmul f1, f2, f1
/* 80504550  FC 25 00 72 */	fmul f1, f5, f1
/* 80504554  FC 20 08 18 */	frsp f1, f1
/* 80504558  D0 21 00 08 */	stfs f1, 8(r1)
/* 8050455C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80504560  EC 20 08 28 */	fsubs f1, f0, f1
/* 80504564  4B EB 6D AD */	bl add_calc_short_angle2
/* 80504568  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 8050456C  7F E3 FB 78 */	mr r3, r31
/* 80504570  38 80 00 00 */	li r4, 0
/* 80504574  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 80504578  4B FD 15 45 */	bl Player_actor_Movement_Base_Stop
lbl_8050457C:
/* 8050457C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80504580  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80504584  7C 08 03 A6 */	mtlr r0
/* 80504588  38 21 00 20 */	addi r1, r1, 0x20
/* 8050458C  4E 80 00 20 */	blr 
