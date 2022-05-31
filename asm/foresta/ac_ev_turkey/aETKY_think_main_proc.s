lbl_80593398:
/* 80593398  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059339C  7C 08 02 A6 */	mflr r0
/* 805933A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805933A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805933A8  7C 7F 1B 78 */	mr r31, r3
/* 805933AC  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 805933B0  28 00 00 FF */	cmplwi r0, 0xff
/* 805933B4  40 82 02 8C */	bne lbl_80593640
/* 805933B8  88 1F 07 F5 */	lbz r0, 0x7f5(r31)
/* 805933BC  2C 00 00 16 */	cmpwi r0, 0x16
/* 805933C0  41 82 00 14 */	beq lbl_805933D4
/* 805933C4  40 80 02 7C */	bge lbl_80593640
/* 805933C8  2C 00 00 08 */	cmpwi r0, 8
/* 805933CC  41 82 02 60 */	beq lbl_8059362C
/* 805933D0  48 00 02 70 */	b lbl_80593640
lbl_805933D4:
/* 805933D4  80 9F 09 BC */	lwz r4, 0x9bc(r31)
/* 805933D8  2C 04 FF FF */	cmpwi r4, -1
/* 805933DC  41 82 00 14 */	beq lbl_805933F0
/* 805933E0  4B FF FD F9 */	bl aETKY_setupAction
/* 805933E4  38 00 FF FF */	li r0, -1
/* 805933E8  90 1F 09 BC */	stw r0, 0x9bc(r31)
/* 805933EC  48 00 00 2C */	b lbl_80593418
lbl_805933F0:
/* 805933F0  88 1F 09 B1 */	lbz r0, 0x9b1(r31)
/* 805933F4  28 00 00 01 */	cmplwi r0, 1
/* 805933F8  40 82 00 10 */	bne lbl_80593408
/* 805933FC  38 80 00 00 */	li r4, 0
/* 80593400  4B FF FD D9 */	bl aETKY_setupAction
/* 80593404  48 00 00 14 */	b lbl_80593418
lbl_80593408:
/* 80593408  80 9F 09 B8 */	lwz r4, 0x9b8(r31)
/* 8059340C  38 04 00 01 */	addi r0, r4, 1
/* 80593410  54 04 07 FE */	clrlwi r4, r0, 0x1f
/* 80593414  4B FF FD C5 */	bl aETKY_setupAction
lbl_80593418:
/* 80593418  38 60 01 00 */	li r3, 0x100
/* 8059341C  38 00 00 01 */	li r0, 1
/* 80593420  90 7F 08 40 */	stw r3, 0x840(r31)
/* 80593424  98 1F 09 59 */	stb r0, 0x959(r31)
/* 80593428  C0 1F 09 C0 */	lfs f0, 0x9c0(r31)
/* 8059342C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80593430  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80593434  41 82 00 A0 */	beq lbl_805934D4
/* 80593438  3C 60 80 65 */	lis r3, lit_596@ha /* 0x80649CDC@ha */
/* 8059343C  3C 80 80 65 */	lis r4, lit_597@ha /* 0x80649CE4@ha */
/* 80593440  38 A3 9C DC */	addi r5, r3, lit_596@l /* 0x80649CDC@l */
/* 80593444  C8 E4 9C E4 */	lfd f7, lit_597@l(r4)  /* 0x80649CE4@l */
/* 80593448  C9 05 00 00 */	lfd f8, 0(r5)
/* 8059344C  3C 60 80 65 */	lis r3, lit_598@ha /* 0x80649CEC@ha */
/* 80593450  38 C3 9C EC */	addi r6, r3, lit_598@l /* 0x80649CEC@l */
/* 80593454  3C 80 80 65 */	lis r4, lit_600@ha /* 0x80649CF8@ha */
/* 80593458  FC 60 40 34 */	frsqrte f3, f8
/* 8059345C  3C 60 80 65 */	lis r3, lit_599@ha /* 0x80649CF4@ha */
/* 80593460  38 A3 9C F4 */	addi r5, r3, lit_599@l /* 0x80649CF4@l */
/* 80593464  C8 C6 00 00 */	lfd f6, 0(r6)
/* 80593468  3C 60 80 65 */	lis r3, lit_601@ha /* 0x80649CFC@ha */
/* 8059346C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80593470  FC 43 00 F2 */	fmul f2, f3, f3
/* 80593474  C0 83 9C FC */	lfs f4, lit_601@l(r3)  /* 0x80649CFC@l */
/* 80593478  38 7F 09 C0 */	addi r3, r31, 0x9c0
/* 8059347C  FC A7 00 F2 */	fmul f5, f7, f3
/* 80593480  C0 64 9C F8 */	lfs f3, lit_600@l(r4)  /* 0x80649CF8@l */
/* 80593484  FC 48 00 B2 */	fmul f2, f8, f2
/* 80593488  FC 46 10 28 */	fsub f2, f6, f2
/* 8059348C  FC A5 00 B2 */	fmul f5, f5, f2
/* 80593490  FC 45 01 72 */	fmul f2, f5, f5
/* 80593494  FC A7 01 72 */	fmul f5, f7, f5
/* 80593498  FC 48 00 B2 */	fmul f2, f8, f2
/* 8059349C  FC 46 10 28 */	fsub f2, f6, f2
/* 805934A0  FC A5 00 B2 */	fmul f5, f5, f2
/* 805934A4  FC 45 01 72 */	fmul f2, f5, f5
/* 805934A8  FC A7 01 72 */	fmul f5, f7, f5
/* 805934AC  FC 48 00 B2 */	fmul f2, f8, f2
/* 805934B0  FC 46 10 28 */	fsub f2, f6, f2
/* 805934B4  FC 45 00 B2 */	fmul f2, f5, f2
/* 805934B8  FC 48 00 B2 */	fmul f2, f8, f2
/* 805934BC  FC 40 10 18 */	frsp f2, f2
/* 805934C0  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 805934C4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 805934C8  EC 40 10 28 */	fsubs f2, f0, f2
/* 805934CC  4B E2 7C E5 */	bl add_calc
/* 805934D0  48 00 01 70 */	b lbl_80593640
lbl_805934D4:
/* 805934D4  C0 1F 09 C4 */	lfs f0, 0x9c4(r31)
/* 805934D8  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 805934DC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 805934E0  41 82 00 A0 */	beq lbl_80593580
/* 805934E4  3C 60 80 65 */	lis r3, lit_596@ha /* 0x80649CDC@ha */
/* 805934E8  3C 80 80 65 */	lis r4, lit_597@ha /* 0x80649CE4@ha */
/* 805934EC  38 A3 9C DC */	addi r5, r3, lit_596@l /* 0x80649CDC@l */
/* 805934F0  C8 E4 9C E4 */	lfd f7, lit_597@l(r4)  /* 0x80649CE4@l */
/* 805934F4  C9 05 00 00 */	lfd f8, 0(r5)
/* 805934F8  3C 60 80 65 */	lis r3, lit_598@ha /* 0x80649CEC@ha */
/* 805934FC  38 C3 9C EC */	addi r6, r3, lit_598@l /* 0x80649CEC@l */
/* 80593500  3C 80 80 65 */	lis r4, lit_600@ha /* 0x80649CF8@ha */
/* 80593504  FC 60 40 34 */	frsqrte f3, f8
/* 80593508  3C 60 80 65 */	lis r3, lit_599@ha /* 0x80649CF4@ha */
/* 8059350C  38 A3 9C F4 */	addi r5, r3, lit_599@l /* 0x80649CF4@l */
/* 80593510  C8 C6 00 00 */	lfd f6, 0(r6)
/* 80593514  3C 60 80 65 */	lis r3, lit_601@ha /* 0x80649CFC@ha */
/* 80593518  C0 05 00 00 */	lfs f0, 0(r5)
/* 8059351C  FC 43 00 F2 */	fmul f2, f3, f3
/* 80593520  C0 83 9C FC */	lfs f4, lit_601@l(r3)  /* 0x80649CFC@l */
/* 80593524  38 7F 09 C4 */	addi r3, r31, 0x9c4
/* 80593528  FC A7 00 F2 */	fmul f5, f7, f3
/* 8059352C  C0 64 9C F8 */	lfs f3, lit_600@l(r4)  /* 0x80649CF8@l */
/* 80593530  FC 48 00 B2 */	fmul f2, f8, f2
/* 80593534  FC 46 10 28 */	fsub f2, f6, f2
/* 80593538  FC A5 00 B2 */	fmul f5, f5, f2
/* 8059353C  FC 45 01 72 */	fmul f2, f5, f5
/* 80593540  FC A7 01 72 */	fmul f5, f7, f5
/* 80593544  FC 48 00 B2 */	fmul f2, f8, f2
/* 80593548  FC 46 10 28 */	fsub f2, f6, f2
/* 8059354C  FC A5 00 B2 */	fmul f5, f5, f2
/* 80593550  FC 45 01 72 */	fmul f2, f5, f5
/* 80593554  FC A7 01 72 */	fmul f5, f7, f5
/* 80593558  FC 48 00 B2 */	fmul f2, f8, f2
/* 8059355C  FC 46 10 28 */	fsub f2, f6, f2
/* 80593560  FC 45 00 B2 */	fmul f2, f5, f2
/* 80593564  FC 48 00 B2 */	fmul f2, f8, f2
/* 80593568  FC 40 10 18 */	frsp f2, f2
/* 8059356C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80593570  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 80593574  EC 40 10 28 */	fsubs f2, f0, f2
/* 80593578  4B E2 7C 39 */	bl add_calc
/* 8059357C  48 00 00 C4 */	b lbl_80593640
lbl_80593580:
/* 80593580  C0 1F 09 C8 */	lfs f0, 0x9c8(r31)
/* 80593584  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80593588  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8059358C  41 82 00 B4 */	beq lbl_80593640
/* 80593590  3C 60 80 65 */	lis r3, lit_596@ha /* 0x80649CDC@ha */
/* 80593594  3C 80 80 65 */	lis r4, lit_597@ha /* 0x80649CE4@ha */
/* 80593598  38 A3 9C DC */	addi r5, r3, lit_596@l /* 0x80649CDC@l */
/* 8059359C  C8 E4 9C E4 */	lfd f7, lit_597@l(r4)  /* 0x80649CE4@l */
/* 805935A0  C9 05 00 00 */	lfd f8, 0(r5)
/* 805935A4  3C 60 80 65 */	lis r3, lit_598@ha /* 0x80649CEC@ha */
/* 805935A8  38 C3 9C EC */	addi r6, r3, lit_598@l /* 0x80649CEC@l */
/* 805935AC  3C 80 80 65 */	lis r4, lit_600@ha /* 0x80649CF8@ha */
/* 805935B0  FC 60 40 34 */	frsqrte f3, f8
/* 805935B4  3C 60 80 65 */	lis r3, lit_599@ha /* 0x80649CF4@ha */
/* 805935B8  38 A3 9C F4 */	addi r5, r3, lit_599@l /* 0x80649CF4@l */
/* 805935BC  C8 C6 00 00 */	lfd f6, 0(r6)
/* 805935C0  3C 60 80 65 */	lis r3, lit_601@ha /* 0x80649CFC@ha */
/* 805935C4  C0 05 00 00 */	lfs f0, 0(r5)
/* 805935C8  FC 43 00 F2 */	fmul f2, f3, f3
/* 805935CC  C0 83 9C FC */	lfs f4, lit_601@l(r3)  /* 0x80649CFC@l */
/* 805935D0  38 7F 09 C8 */	addi r3, r31, 0x9c8
/* 805935D4  FC A7 00 F2 */	fmul f5, f7, f3
/* 805935D8  C0 64 9C F8 */	lfs f3, lit_600@l(r4)  /* 0x80649CF8@l */
/* 805935DC  FC 48 00 B2 */	fmul f2, f8, f2
/* 805935E0  FC 46 10 28 */	fsub f2, f6, f2
/* 805935E4  FC A5 00 B2 */	fmul f5, f5, f2
/* 805935E8  FC 45 01 72 */	fmul f2, f5, f5
/* 805935EC  FC A7 01 72 */	fmul f5, f7, f5
/* 805935F0  FC 48 00 B2 */	fmul f2, f8, f2
/* 805935F4  FC 46 10 28 */	fsub f2, f6, f2
/* 805935F8  FC A5 00 B2 */	fmul f5, f5, f2
/* 805935FC  FC 45 01 72 */	fmul f2, f5, f5
/* 80593600  FC A7 01 72 */	fmul f5, f7, f5
/* 80593604  FC 48 00 B2 */	fmul f2, f8, f2
/* 80593608  FC 46 10 28 */	fsub f2, f6, f2
/* 8059360C  FC 45 00 B2 */	fmul f2, f5, f2
/* 80593610  FC 48 00 B2 */	fmul f2, f8, f2
/* 80593614  FC 40 10 18 */	frsp f2, f2
/* 80593618  D0 41 00 08 */	stfs f2, 8(r1)
/* 8059361C  C0 41 00 08 */	lfs f2, 8(r1)
/* 80593620  EC 40 10 28 */	fsubs f2, f0, f2
/* 80593624  4B E2 7B 8D */	bl add_calc
/* 80593628  48 00 00 18 */	b lbl_80593640
lbl_8059362C:
/* 8059362C  38 80 01 00 */	li r4, 0x100
/* 80593630  38 00 00 00 */	li r0, 0
/* 80593634  90 9F 08 40 */	stw r4, 0x840(r31)
/* 80593638  B0 1F 09 24 */	sth r0, 0x924(r31)
/* 8059363C  4B FF FD 0D */	bl aETKY_set_request_act
lbl_80593640:
/* 80593640  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80593644  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80593648  7C 08 03 A6 */	mtlr r0
/* 8059364C  38 21 00 20 */	addi r1, r1, 0x20
/* 80593650  4E 80 00 20 */	blr 
