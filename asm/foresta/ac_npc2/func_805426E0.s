lbl_805426E0:
/* 805426E0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805426E4  7C 08 02 A6 */	mflr r0
/* 805426E8  90 01 00 54 */	stw r0, 0x54(r1)
/* 805426EC  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 805426F0  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 805426F4  39 61 00 40 */	addi r11, r1, 0x40
/* 805426F8  4B B5 87 D5 */	bl func_8009AECC
/* 805426FC  3C A0 81 1F */	lis r5, data_811EBD30@ha /* 0x811EBD30@ha */
/* 80542700  7C 7F 1B 78 */	mr r31, r3
/* 80542704  83 C5 BD 30 */	lwz r30, data_811EBD30@l(r5)  /* 0x811EBD30@l */
/* 80542708  7C 9B 23 78 */	mr r27, r4
/* 8054270C  38 61 00 08 */	addi r3, r1, 8
/* 80542710  38 80 00 0C */	li r4, 0xc
/* 80542714  4B B1 A9 55 */	bl bzero
/* 80542718  7F E3 FB 78 */	mr r3, r31
/* 8054271C  4B FF EB 51 */	bl aNPC_check_fatigue
/* 80542720  2C 03 00 01 */	cmpwi r3, 1
/* 80542724  40 82 00 0C */	bne lbl_80542730
/* 80542728  38 A0 00 00 */	li r5, 0
/* 8054272C  48 00 01 24 */	b lbl_80542850
lbl_80542730:
/* 80542730  88 1F 07 F5 */	lbz r0, 0x7f5(r31)
/* 80542734  28 00 00 03 */	cmplwi r0, 3
/* 80542738  40 82 00 34 */	bne lbl_8054276C
/* 8054273C  C0 1F 09 0C */	lfs f0, 0x90c(r31)
/* 80542740  38 A0 00 01 */	li r5, 1
/* 80542744  FC 00 00 1E */	fctiwz f0, f0
/* 80542748  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8054274C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80542750  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80542754  C0 1F 09 10 */	lfs f0, 0x910(r31)
/* 80542758  FC 00 00 1E */	fctiwz f0, f0
/* 8054275C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80542760  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80542764  B0 01 00 0E */	sth r0, 0xe(r1)
/* 80542768  48 00 00 E8 */	b lbl_80542850
lbl_8054276C:
/* 8054276C  4B B1 A5 89 */	bl fqrand
/* 80542770  3C 60 80 65 */	lis r3, lit_3042@ha /* 0x8064943C@ha */
/* 80542774  C0 03 94 3C */	lfs f0, lit_3042@l(r3)  /* 0x8064943C@l */
/* 80542778  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8054277C  40 80 00 0C */	bge lbl_80542788
/* 80542780  38 A0 00 00 */	li r5, 0
/* 80542784  48 00 00 CC */	b lbl_80542850
lbl_80542788:
/* 80542788  3C 60 80 65 */	lis r3, lit_3043@ha /* 0x80649440@ha */
/* 8054278C  3B 9E 09 28 */	addi r28, r30, 0x928
/* 80542790  C3 E3 94 40 */	lfs f31, lit_3043@l(r3)  /* 0x80649440@l */
lbl_80542794:
/* 80542794  4B B1 A5 61 */	bl fqrand
/* 80542798  EC 1F 00 72 */	fmuls f0, f31, f1
/* 8054279C  FC 00 00 1E */	fctiwz f0, f0
/* 805427A0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805427A4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 805427A8  4B B1 A5 4D */	bl fqrand
/* 805427AC  EC 1F 00 72 */	fmuls f0, f31, f1
/* 805427B0  57 A3 10 3A */	slwi r3, r29, 2
/* 805427B4  FC 00 00 1E */	fctiwz f0, f0
/* 805427B8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805427BC  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 805427C0  1C 06 00 18 */	mulli r0, r6, 0x18
/* 805427C4  7C 03 02 14 */	add r0, r3, r0
/* 805427C8  7C 1C 00 2E */	lwzx r0, r28, r0
/* 805427CC  2C 00 00 00 */	cmpwi r0, 0
/* 805427D0  41 82 FF C4 */	beq lbl_80542794
/* 805427D4  7F E3 FB 78 */	mr r3, r31
/* 805427D8  7F 64 DB 78 */	mr r4, r27
/* 805427DC  7F A5 EB 78 */	mr r5, r29
/* 805427E0  38 E0 00 00 */	li r7, 0
/* 805427E4  4B FF F2 11 */	bl aNPC_route_check
/* 805427E8  2C 03 00 02 */	cmpwi r3, 2
/* 805427EC  40 82 00 60 */	bne lbl_8054284C
/* 805427F0  A8 9F 00 36 */	lha r4, 0x36(r31)
/* 805427F4  3C 60 80 6A */	lis r3, aNPC_drt_table@ha /* 0x806A3D90@ha */
/* 805427F8  38 63 3D 90 */	addi r3, r3, aNPC_drt_table@l /* 0x806A3D90@l */
/* 805427FC  80 BE 09 D8 */	lwz r5, 0x9d8(r30)
/* 80542800  38 04 20 00 */	addi r0, r4, 0x2000
/* 80542804  38 80 00 01 */	li r4, 1
/* 80542808  54 00 A7 3A */	rlwinm r0, r0, 0x14, 0x1c, 0x1d
/* 8054280C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80542810  7C 05 00 00 */	cmpw r5, r0
/* 80542814  41 82 00 08 */	beq lbl_8054281C
/* 80542818  38 80 00 03 */	li r4, 3
lbl_8054281C:
/* 8054281C  C0 1F 09 0C */	lfs f0, 0x90c(r31)
/* 80542820  7C 85 23 78 */	mr r5, r4
/* 80542824  FC 00 00 1E */	fctiwz f0, f0
/* 80542828  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8054282C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80542830  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80542834  C0 1F 09 10 */	lfs f0, 0x910(r31)
/* 80542838  FC 00 00 1E */	fctiwz f0, f0
/* 8054283C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80542840  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80542844  B0 01 00 0E */	sth r0, 0xe(r1)
/* 80542848  48 00 00 08 */	b lbl_80542850
lbl_8054284C:
/* 8054284C  38 A0 00 00 */	li r5, 0
lbl_80542850:
/* 80542850  88 1F 07 F5 */	lbz r0, 0x7f5(r31)
/* 80542854  54 A3 06 3E */	clrlwi r3, r5, 0x18
/* 80542858  7C 03 00 40 */	cmplw r3, r0
/* 8054285C  40 82 00 0C */	bne lbl_80542868
/* 80542860  38 00 00 00 */	li r0, 0
/* 80542864  98 1F 07 F6 */	stb r0, 0x7f6(r31)
lbl_80542868:
/* 80542868  7F E3 FB 78 */	mr r3, r31
/* 8054286C  38 E1 00 08 */	addi r7, r1, 8
/* 80542870  38 80 00 01 */	li r4, 1
/* 80542874  38 C0 00 00 */	li r6, 0
/* 80542878  4B FF CB 29 */	bl aNPC_set_request_act
/* 8054287C  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80542880  39 61 00 40 */	addi r11, r1, 0x40
/* 80542884  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80542888  4B B5 86 91 */	bl func_8009AF18
/* 8054288C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80542890  7C 08 03 A6 */	mtlr r0
/* 80542894  38 21 00 50 */	addi r1, r1, 0x50
/* 80542898  4E 80 00 20 */	blr 
