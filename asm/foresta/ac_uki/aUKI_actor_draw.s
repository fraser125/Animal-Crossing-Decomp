lbl_804AF5CC:
/* 804AF5CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804AF5D0  7C 08 02 A6 */	mflr r0
/* 804AF5D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804AF5D8  39 61 00 30 */	addi r11, r1, 0x30
/* 804AF5DC  4B BE B8 F5 */	bl func_8009AED0
/* 804AF5E0  7C 9C 23 78 */	mr r28, r4
/* 804AF5E4  7C 7F 1B 78 */	mr r31, r3
/* 804AF5E8  7F 83 E3 78 */	mr r3, r28
/* 804AF5EC  4B F2 A0 55 */	bl get_player_actor_withoutCheck
/* 804AF5F0  83 DC 00 00 */	lwz r30, 0(r28)
/* 804AF5F4  7C 7C 1B 78 */	mr r28, r3
/* 804AF5F8  38 7F 01 98 */	addi r3, r31, 0x198
/* 804AF5FC  38 80 00 01 */	li r4, 1
/* 804AF600  83 BE 02 D0 */	lwz r29, 0x2d0(r30)
/* 804AF604  4B F5 CC 95 */	bl Matrix_mult
/* 804AF608  3C 60 E7 00 */	lis r3, 0xe700
/* 804AF60C  38 00 00 00 */	li r0, 0
/* 804AF610  90 7D 00 00 */	stw r3, 0(r29)
/* 804AF614  90 1D 00 04 */	stw r0, 4(r29)
/* 804AF618  3B BD 00 08 */	addi r29, r29, 8
/* 804AF61C  A8 1F 01 D8 */	lha r0, 0x1d8(r31)
/* 804AF620  28 00 00 07 */	cmplwi r0, 7
/* 804AF624  41 81 04 3C */	bgt lbl_804AFA60
/* 804AF628  3C 60 80 69 */	lis r3, lit_1061@ha /* 0x8068FB44@ha */
/* 804AF62C  54 00 10 3A */	slwi r0, r0, 2
/* 804AF630  38 63 FB 44 */	addi r3, r3, lit_1061@l /* 0x8068FB44@l */
/* 804AF634  7C 03 00 2E */	lwzx r0, r3, r0
/* 804AF638  7C 09 03 A6 */	mtctr r0
/* 804AF63C  4E 80 04 20 */	bctr 
lbl_804AF640:
/* 804AF640  7F E3 FB 78 */	mr r3, r31
/* 804AF644  4B FF FE BD */	bl func_804AF500
/* 804AF648  A8 7C 00 DE */	lha r3, 0xde(r28)
/* 804AF64C  38 80 00 01 */	li r4, 1
/* 804AF650  4B F5 D0 0D */	bl Matrix_RotateY
/* 804AF654  48 00 04 0C */	b lbl_804AFA60
lbl_804AF658:
/* 804AF658  38 7F 00 28 */	addi r3, r31, 0x28
/* 804AF65C  38 9F 02 48 */	addi r4, r31, 0x248
/* 804AF660  4B F0 BB 09 */	bl search_position_angleX
/* 804AF664  B0 7F 02 80 */	sth r3, 0x280(r31)
/* 804AF668  38 7F 00 28 */	addi r3, r31, 0x28
/* 804AF66C  38 9F 02 48 */	addi r4, r31, 0x248
/* 804AF670  4B F0 BA C1 */	bl search_position_angleY
/* 804AF674  B0 7F 02 82 */	sth r3, 0x282(r31)
/* 804AF678  38 80 00 01 */	li r4, 1
/* 804AF67C  A8 7F 02 80 */	lha r3, 0x280(r31)
/* 804AF680  3C 63 00 01 */	addis r3, r3, 1
/* 804AF684  38 03 80 00 */	addi r0, r3, -32768
/* 804AF688  B0 1F 02 80 */	sth r0, 0x280(r31)
/* 804AF68C  A8 7F 02 82 */	lha r3, 0x282(r31)
/* 804AF690  4B F5 CF CD */	bl Matrix_RotateY
/* 804AF694  A8 7F 02 80 */	lha r3, 0x280(r31)
/* 804AF698  38 80 00 01 */	li r4, 1
/* 804AF69C  4B F5 CE 1D */	bl Matrix_RotateX
/* 804AF6A0  48 00 03 C0 */	b lbl_804AFA60
lbl_804AF6A4:
/* 804AF6A4  3C 60 80 64 */	lis r3, lit_1056@ha /* 0x80645FC4@ha */
/* 804AF6A8  3C 80 80 64 */	lis r4, lit_1057@ha /* 0x80645FCC@ha */
/* 804AF6AC  38 A3 5F C4 */	addi r5, r3, lit_1056@l /* 0x80645FC4@l */
/* 804AF6B0  38 C0 00 00 */	li r6, 0
/* 804AF6B4  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804AF6B8  38 A4 5F CC */	addi r5, r4, lit_1057@l /* 0x80645FCC@l */
/* 804AF6BC  3C 60 80 64 */	lis r3, lit_1058@ha /* 0x80645FD4@ha */
/* 804AF6C0  C8 85 00 00 */	lfd f4, 0(r5)
/* 804AF6C4  FC 40 28 34 */	frsqrte f2, f5
/* 804AF6C8  38 83 5F D4 */	addi r4, r3, lit_1058@l /* 0x80645FD4@l */
/* 804AF6CC  C8 64 00 00 */	lfd f3, 0(r4)
/* 804AF6D0  3C 60 80 64 */	lis r3, lit_715@ha /* 0x80645F90@ha */
/* 804AF6D4  C0 03 5F 90 */	lfs f0, lit_715@l(r3)  /* 0x80645F90@l */
/* 804AF6D8  38 7F 02 80 */	addi r3, r31, 0x280
/* 804AF6DC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804AF6E0  38 80 40 00 */	li r4, 0x4000
/* 804AF6E4  38 A0 04 00 */	li r5, 0x400
/* 804AF6E8  FC 44 00 B2 */	fmul f2, f4, f2
/* 804AF6EC  FC 25 00 72 */	fmul f1, f5, f1
/* 804AF6F0  FC 23 08 28 */	fsub f1, f3, f1
/* 804AF6F4  FC 42 00 72 */	fmul f2, f2, f1
/* 804AF6F8  FC 22 00 B2 */	fmul f1, f2, f2
/* 804AF6FC  FC 44 00 B2 */	fmul f2, f4, f2
/* 804AF700  FC 25 00 72 */	fmul f1, f5, f1
/* 804AF704  FC 23 08 28 */	fsub f1, f3, f1
/* 804AF708  FC 42 00 72 */	fmul f2, f2, f1
/* 804AF70C  FC 22 00 B2 */	fmul f1, f2, f2
/* 804AF710  FC 44 00 B2 */	fmul f2, f4, f2
/* 804AF714  FC 25 00 72 */	fmul f1, f5, f1
/* 804AF718  FC 23 08 28 */	fsub f1, f3, f1
/* 804AF71C  FC 22 00 72 */	fmul f1, f2, f1
/* 804AF720  FC 25 00 72 */	fmul f1, f5, f1
/* 804AF724  FC 20 08 18 */	frsp f1, f1
/* 804AF728  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804AF72C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 804AF730  EC 20 08 28 */	fsubs f1, f0, f1
/* 804AF734  4B F0 BB DD */	bl add_calc_short_angle2
/* 804AF738  38 7F 00 28 */	addi r3, r31, 0x28
/* 804AF73C  38 9F 02 48 */	addi r4, r31, 0x248
/* 804AF740  4B F0 B9 F1 */	bl search_position_angleY
/* 804AF744  B0 7F 02 82 */	sth r3, 0x282(r31)
/* 804AF748  38 80 00 01 */	li r4, 1
/* 804AF74C  A8 7F 02 82 */	lha r3, 0x282(r31)
/* 804AF750  4B F5 CF 0D */	bl Matrix_RotateY
/* 804AF754  A8 7F 02 80 */	lha r3, 0x280(r31)
/* 804AF758  38 80 00 01 */	li r4, 1
/* 804AF75C  4B F5 CD 5D */	bl Matrix_RotateX
/* 804AF760  48 00 03 00 */	b lbl_804AFA60
lbl_804AF764:
/* 804AF764  38 7F 00 28 */	addi r3, r31, 0x28
/* 804AF768  38 9F 02 48 */	addi r4, r31, 0x248
/* 804AF76C  4B F0 B9 C5 */	bl search_position_angleY
/* 804AF770  B0 7F 02 82 */	sth r3, 0x282(r31)
/* 804AF774  A8 1F 02 62 */	lha r0, 0x262(r31)
/* 804AF778  2C 00 00 0A */	cmpwi r0, 0xa
/* 804AF77C  40 80 00 9C */	bge lbl_804AF818
/* 804AF780  3C 60 80 64 */	lis r3, lit_1059@ha /* 0x80645FDC@ha */
/* 804AF784  3C 80 80 64 */	lis r4, lit_1057@ha /* 0x80645FCC@ha */
/* 804AF788  38 A3 5F DC */	addi r5, r3, lit_1059@l /* 0x80645FDC@l */
/* 804AF78C  38 C0 00 00 */	li r6, 0
/* 804AF790  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804AF794  38 A4 5F CC */	addi r5, r4, lit_1057@l /* 0x80645FCC@l */
/* 804AF798  3C 60 80 64 */	lis r3, lit_1058@ha /* 0x80645FD4@ha */
/* 804AF79C  C8 85 00 00 */	lfd f4, 0(r5)
/* 804AF7A0  FC 40 28 34 */	frsqrte f2, f5
/* 804AF7A4  38 83 5F D4 */	addi r4, r3, lit_1058@l /* 0x80645FD4@l */
/* 804AF7A8  C8 64 00 00 */	lfd f3, 0(r4)
/* 804AF7AC  3C 60 80 64 */	lis r3, lit_715@ha /* 0x80645F90@ha */
/* 804AF7B0  C0 03 5F 90 */	lfs f0, lit_715@l(r3)  /* 0x80645F90@l */
/* 804AF7B4  38 7F 02 80 */	addi r3, r31, 0x280
/* 804AF7B8  FC 22 00 B2 */	fmul f1, f2, f2
/* 804AF7BC  38 80 00 00 */	li r4, 0
/* 804AF7C0  38 A0 08 00 */	li r5, 0x800
/* 804AF7C4  FC 44 00 B2 */	fmul f2, f4, f2
/* 804AF7C8  FC 25 00 72 */	fmul f1, f5, f1
/* 804AF7CC  FC 23 08 28 */	fsub f1, f3, f1
/* 804AF7D0  FC 42 00 72 */	fmul f2, f2, f1
/* 804AF7D4  FC 22 00 B2 */	fmul f1, f2, f2
/* 804AF7D8  FC 44 00 B2 */	fmul f2, f4, f2
/* 804AF7DC  FC 25 00 72 */	fmul f1, f5, f1
/* 804AF7E0  FC 23 08 28 */	fsub f1, f3, f1
/* 804AF7E4  FC 42 00 72 */	fmul f2, f2, f1
/* 804AF7E8  FC 22 00 B2 */	fmul f1, f2, f2
/* 804AF7EC  FC 44 00 B2 */	fmul f2, f4, f2
/* 804AF7F0  FC 25 00 72 */	fmul f1, f5, f1
/* 804AF7F4  FC 23 08 28 */	fsub f1, f3, f1
/* 804AF7F8  FC 22 00 72 */	fmul f1, f2, f1
/* 804AF7FC  FC 25 00 72 */	fmul f1, f5, f1
/* 804AF800  FC 20 08 18 */	frsp f1, f1
/* 804AF804  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 804AF808  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804AF80C  EC 20 08 28 */	fsubs f1, f0, f1
/* 804AF810  4B F0 BB 01 */	bl add_calc_short_angle2
/* 804AF814  48 00 00 20 */	b lbl_804AF834
lbl_804AF818:
/* 804AF818  38 7F 00 28 */	addi r3, r31, 0x28
/* 804AF81C  38 9F 02 48 */	addi r4, r31, 0x248
/* 804AF820  4B F0 B9 49 */	bl search_position_angleX
/* 804AF824  B0 7F 02 80 */	sth r3, 0x280(r31)
/* 804AF828  A8 7F 02 80 */	lha r3, 0x280(r31)
/* 804AF82C  38 03 C0 00 */	addi r0, r3, -16384
/* 804AF830  B0 1F 02 80 */	sth r0, 0x280(r31)
lbl_804AF834:
/* 804AF834  A8 7F 02 82 */	lha r3, 0x282(r31)
/* 804AF838  38 80 00 01 */	li r4, 1
/* 804AF83C  4B F5 CE 21 */	bl Matrix_RotateY
/* 804AF840  A8 7F 02 80 */	lha r3, 0x280(r31)
/* 804AF844  38 80 00 01 */	li r4, 1
/* 804AF848  4B F5 CC 71 */	bl Matrix_RotateX
/* 804AF84C  48 00 02 14 */	b lbl_804AFA60
lbl_804AF850:
/* 804AF850  A8 1F 02 64 */	lha r0, 0x264(r31)
/* 804AF854  2C 00 00 00 */	cmpwi r0, 0
/* 804AF858  40 82 00 9C */	bne lbl_804AF8F4
/* 804AF85C  3C 60 80 64 */	lis r3, lit_1060@ha /* 0x80645FE4@ha */
/* 804AF860  3C 80 80 64 */	lis r4, lit_1057@ha /* 0x80645FCC@ha */
/* 804AF864  38 A3 5F E4 */	addi r5, r3, lit_1060@l /* 0x80645FE4@l */
/* 804AF868  38 C0 00 00 */	li r6, 0
/* 804AF86C  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804AF870  38 A4 5F CC */	addi r5, r4, lit_1057@l /* 0x80645FCC@l */
/* 804AF874  3C 60 80 64 */	lis r3, lit_1058@ha /* 0x80645FD4@ha */
/* 804AF878  C8 85 00 00 */	lfd f4, 0(r5)
/* 804AF87C  FC 40 28 34 */	frsqrte f2, f5
/* 804AF880  38 83 5F D4 */	addi r4, r3, lit_1058@l /* 0x80645FD4@l */
/* 804AF884  C8 64 00 00 */	lfd f3, 0(r4)
/* 804AF888  3C 60 80 64 */	lis r3, lit_715@ha /* 0x80645F90@ha */
/* 804AF88C  C0 03 5F 90 */	lfs f0, lit_715@l(r3)  /* 0x80645F90@l */
/* 804AF890  38 7F 02 80 */	addi r3, r31, 0x280
/* 804AF894  FC 22 00 B2 */	fmul f1, f2, f2
/* 804AF898  38 80 00 00 */	li r4, 0
/* 804AF89C  38 A0 20 00 */	li r5, 0x2000
/* 804AF8A0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804AF8A4  FC 25 00 72 */	fmul f1, f5, f1
/* 804AF8A8  FC 23 08 28 */	fsub f1, f3, f1
/* 804AF8AC  FC 42 00 72 */	fmul f2, f2, f1
/* 804AF8B0  FC 22 00 B2 */	fmul f1, f2, f2
/* 804AF8B4  FC 44 00 B2 */	fmul f2, f4, f2
/* 804AF8B8  FC 25 00 72 */	fmul f1, f5, f1
/* 804AF8BC  FC 23 08 28 */	fsub f1, f3, f1
/* 804AF8C0  FC 42 00 72 */	fmul f2, f2, f1
/* 804AF8C4  FC 22 00 B2 */	fmul f1, f2, f2
/* 804AF8C8  FC 44 00 B2 */	fmul f2, f4, f2
/* 804AF8CC  FC 25 00 72 */	fmul f1, f5, f1
/* 804AF8D0  FC 23 08 28 */	fsub f1, f3, f1
/* 804AF8D4  FC 22 00 72 */	fmul f1, f2, f1
/* 804AF8D8  FC 25 00 72 */	fmul f1, f5, f1
/* 804AF8DC  FC 20 08 18 */	frsp f1, f1
/* 804AF8E0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804AF8E4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 804AF8E8  EC 20 08 28 */	fsubs f1, f0, f1
/* 804AF8EC  4B F0 BA 25 */	bl add_calc_short_angle2
/* 804AF8F0  48 00 00 98 */	b lbl_804AF988
lbl_804AF8F4:
/* 804AF8F4  3C 60 80 64 */	lis r3, lit_1056@ha /* 0x80645FC4@ha */
/* 804AF8F8  3C 80 80 64 */	lis r4, lit_1057@ha /* 0x80645FCC@ha */
/* 804AF8FC  38 A3 5F C4 */	addi r5, r3, lit_1056@l /* 0x80645FC4@l */
/* 804AF900  38 C0 00 00 */	li r6, 0
/* 804AF904  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804AF908  38 A4 5F CC */	addi r5, r4, lit_1057@l /* 0x80645FCC@l */
/* 804AF90C  3C 60 80 64 */	lis r3, lit_1058@ha /* 0x80645FD4@ha */
/* 804AF910  C8 85 00 00 */	lfd f4, 0(r5)
/* 804AF914  FC 40 28 34 */	frsqrte f2, f5
/* 804AF918  38 83 5F D4 */	addi r4, r3, lit_1058@l /* 0x80645FD4@l */
/* 804AF91C  C8 64 00 00 */	lfd f3, 0(r4)
/* 804AF920  3C 60 80 64 */	lis r3, lit_715@ha /* 0x80645F90@ha */
/* 804AF924  C0 03 5F 90 */	lfs f0, lit_715@l(r3)  /* 0x80645F90@l */
/* 804AF928  38 7F 02 80 */	addi r3, r31, 0x280
/* 804AF92C  FC 22 00 B2 */	fmul f1, f2, f2
/* 804AF930  38 80 40 00 */	li r4, 0x4000
/* 804AF934  38 A0 04 00 */	li r5, 0x400
/* 804AF938  FC 44 00 B2 */	fmul f2, f4, f2
/* 804AF93C  FC 25 00 72 */	fmul f1, f5, f1
/* 804AF940  FC 23 08 28 */	fsub f1, f3, f1
/* 804AF944  FC 42 00 72 */	fmul f2, f2, f1
/* 804AF948  FC 22 00 B2 */	fmul f1, f2, f2
/* 804AF94C  FC 44 00 B2 */	fmul f2, f4, f2
/* 804AF950  FC 25 00 72 */	fmul f1, f5, f1
/* 804AF954  FC 23 08 28 */	fsub f1, f3, f1
/* 804AF958  FC 42 00 72 */	fmul f2, f2, f1
/* 804AF95C  FC 22 00 B2 */	fmul f1, f2, f2
/* 804AF960  FC 44 00 B2 */	fmul f2, f4, f2
/* 804AF964  FC 25 00 72 */	fmul f1, f5, f1
/* 804AF968  FC 23 08 28 */	fsub f1, f3, f1
/* 804AF96C  FC 22 00 72 */	fmul f1, f2, f1
/* 804AF970  FC 25 00 72 */	fmul f1, f5, f1
/* 804AF974  FC 20 08 18 */	frsp f1, f1
/* 804AF978  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804AF97C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804AF980  EC 20 08 28 */	fsubs f1, f0, f1
/* 804AF984  4B F0 B9 8D */	bl add_calc_short_angle2
lbl_804AF988:
/* 804AF988  38 7F 00 28 */	addi r3, r31, 0x28
/* 804AF98C  38 9F 02 48 */	addi r4, r31, 0x248
/* 804AF990  4B F0 B7 A1 */	bl search_position_angleY
/* 804AF994  B0 7F 02 82 */	sth r3, 0x282(r31)
/* 804AF998  38 80 00 01 */	li r4, 1
/* 804AF99C  A8 7F 02 82 */	lha r3, 0x282(r31)
/* 804AF9A0  4B F5 CC BD */	bl Matrix_RotateY
/* 804AF9A4  A8 7F 02 80 */	lha r3, 0x280(r31)
/* 804AF9A8  38 80 00 01 */	li r4, 1
/* 804AF9AC  4B F5 CB 0D */	bl Matrix_RotateX
/* 804AF9B0  48 00 00 B0 */	b lbl_804AFA60
lbl_804AF9B4:
/* 804AF9B4  80 1F 02 8C */	lwz r0, 0x28c(r31)
/* 804AF9B8  2C 00 00 04 */	cmpwi r0, 4
/* 804AF9BC  40 82 00 A4 */	bne lbl_804AFA60
/* 804AF9C0  3C 60 80 64 */	lis r3, lit_1056@ha /* 0x80645FC4@ha */
/* 804AF9C4  3C 80 80 64 */	lis r4, lit_1057@ha /* 0x80645FCC@ha */
/* 804AF9C8  38 A3 5F C4 */	addi r5, r3, lit_1056@l /* 0x80645FC4@l */
/* 804AF9CC  38 C0 00 00 */	li r6, 0
/* 804AF9D0  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804AF9D4  38 A4 5F CC */	addi r5, r4, lit_1057@l /* 0x80645FCC@l */
/* 804AF9D8  3C 60 80 64 */	lis r3, lit_1058@ha /* 0x80645FD4@ha */
/* 804AF9DC  C8 85 00 00 */	lfd f4, 0(r5)
/* 804AF9E0  FC 40 28 34 */	frsqrte f2, f5
/* 804AF9E4  38 83 5F D4 */	addi r4, r3, lit_1058@l /* 0x80645FD4@l */
/* 804AF9E8  C8 64 00 00 */	lfd f3, 0(r4)
/* 804AF9EC  3C 60 80 64 */	lis r3, lit_715@ha /* 0x80645F90@ha */
/* 804AF9F0  C0 03 5F 90 */	lfs f0, lit_715@l(r3)  /* 0x80645F90@l */
/* 804AF9F4  38 7F 02 80 */	addi r3, r31, 0x280
/* 804AF9F8  FC 22 00 B2 */	fmul f1, f2, f2
/* 804AF9FC  38 80 C0 00 */	li r4, -16384
/* 804AFA00  38 A0 04 00 */	li r5, 0x400
/* 804AFA04  FC 44 00 B2 */	fmul f2, f4, f2
/* 804AFA08  FC 25 00 72 */	fmul f1, f5, f1
/* 804AFA0C  FC 23 08 28 */	fsub f1, f3, f1
/* 804AFA10  FC 42 00 72 */	fmul f2, f2, f1
/* 804AFA14  FC 22 00 B2 */	fmul f1, f2, f2
/* 804AFA18  FC 44 00 B2 */	fmul f2, f4, f2
/* 804AFA1C  FC 25 00 72 */	fmul f1, f5, f1
/* 804AFA20  FC 23 08 28 */	fsub f1, f3, f1
/* 804AFA24  FC 42 00 72 */	fmul f2, f2, f1
/* 804AFA28  FC 22 00 B2 */	fmul f1, f2, f2
/* 804AFA2C  FC 44 00 B2 */	fmul f2, f4, f2
/* 804AFA30  FC 25 00 72 */	fmul f1, f5, f1
/* 804AFA34  FC 23 08 28 */	fsub f1, f3, f1
/* 804AFA38  FC 22 00 72 */	fmul f1, f2, f1
/* 804AFA3C  FC 25 00 72 */	fmul f1, f5, f1
/* 804AFA40  FC 20 08 18 */	frsp f1, f1
/* 804AFA44  D0 21 00 08 */	stfs f1, 8(r1)
/* 804AFA48  C0 21 00 08 */	lfs f1, 8(r1)
/* 804AFA4C  EC 20 08 28 */	fsubs f1, f0, f1
/* 804AFA50  4B F0 B8 C1 */	bl add_calc_short_angle2
/* 804AFA54  A8 7F 02 82 */	lha r3, 0x282(r31)
/* 804AFA58  38 80 00 01 */	li r4, 1
/* 804AFA5C  4B F5 CC 01 */	bl Matrix_RotateY
lbl_804AFA60:
/* 804AFA60  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 804AFA64  7F C3 F3 78 */	mr r3, r30
/* 804AFA68  38 04 00 03 */	addi r0, r4, 0x0003 /* 0xDA380003@l */
/* 804AFA6C  90 1D 00 00 */	stw r0, 0(r29)
/* 804AFA70  4B F5 D9 65 */	bl _Matrix_to_Mtx_new
/* 804AFA74  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA000080@ha */
/* 804AFA78  90 7D 00 04 */	stw r3, 4(r29)
/* 804AFA7C  38 04 00 80 */	addi r0, r4, 0x0080 /* 0xFA000080@l */
/* 804AFA80  90 1D 00 08 */	stw r0, 8(r29)
/* 804AFA84  80 1F 02 9C */	lwz r0, 0x29c(r31)
/* 804AFA88  80 7F 02 98 */	lwz r3, 0x298(r31)
/* 804AFA8C  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 804AFA90  80 9F 02 A0 */	lwz r4, 0x2a0(r31)
/* 804AFA94  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 804AFA98  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 804AFA9C  60 00 00 FF */	ori r0, r0, 0xff
/* 804AFAA0  90 1D 00 0C */	stw r0, 0xc(r29)
/* 804AFAA4  4B EE B4 15 */	bl mEv_CheckTitleDemo
/* 804AFAA8  2C 03 00 00 */	cmpwi r3, 0
/* 804AFAAC  40 81 00 10 */	ble lbl_804AFABC
/* 804AFAB0  4B F2 E2 E5 */	bl mPlib_Get_controller_data_for_title_demo_p
/* 804AFAB4  A0 03 00 3C */	lhz r0, 0x3c(r3)
/* 804AFAB8  48 00 00 18 */	b lbl_804AFAD0
lbl_804AFABC:
/* 804AFABC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804AFAC0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804AFAC4  3C 63 00 02 */	addis r3, r3, 2
/* 804AFAC8  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 804AFACC  A0 03 04 A4 */	lhz r0, 0x4a4(r3)
lbl_804AFAD0:
/* 804AFAD0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804AFAD4  28 00 22 03 */	cmplwi r0, 0x2203
/* 804AFAD8  40 82 00 20 */	bne lbl_804AFAF8
/* 804AFADC  3C 00 DE 00 */	lis r0, 0xde00
/* 804AFAE0  3C 60 80 C5 */	lis r3, tol_uki1_model@ha /* 0x80C4F0C0@ha */
/* 804AFAE4  90 1D 00 10 */	stw r0, 0x10(r29)
/* 804AFAE8  38 03 F0 C0 */	addi r0, r3, tol_uki1_model@l /* 0x80C4F0C0@l */
/* 804AFAEC  90 1D 00 14 */	stw r0, 0x14(r29)
/* 804AFAF0  3B BD 00 18 */	addi r29, r29, 0x18
/* 804AFAF4  48 00 00 1C */	b lbl_804AFB10
lbl_804AFAF8:
/* 804AFAF8  3C 00 DE 00 */	lis r0, 0xde00
/* 804AFAFC  3C 60 80 C5 */	lis r3, tol_uki2_model@ha /* 0x80C4F400@ha */
/* 804AFB00  90 1D 00 10 */	stw r0, 0x10(r29)
/* 804AFB04  38 03 F4 00 */	addi r0, r3, tol_uki2_model@l /* 0x80C4F400@l */
/* 804AFB08  90 1D 00 14 */	stw r0, 0x14(r29)
/* 804AFB0C  3B BD 00 18 */	addi r29, r29, 0x18
lbl_804AFB10:
/* 804AFB10  93 BE 02 D0 */	stw r29, 0x2d0(r30)
/* 804AFB14  39 61 00 30 */	addi r11, r1, 0x30
/* 804AFB18  4B BE B4 05 */	bl func_8009AF1C
/* 804AFB1C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804AFB20  7C 08 03 A6 */	mtlr r0
/* 804AFB24  38 21 00 30 */	addi r1, r1, 0x30
/* 804AFB28  4E 80 00 20 */	blr 
