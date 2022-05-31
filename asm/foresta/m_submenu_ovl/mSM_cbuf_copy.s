lbl_805ED5AC:
/* 805ED5AC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805ED5B0  7C 08 02 A6 */	mflr r0
/* 805ED5B4  90 01 00 84 */	stw r0, 0x84(r1)
/* 805ED5B8  39 61 00 80 */	addi r11, r1, 0x80
/* 805ED5BC  4B AA D8 DD */	bl __save_gpr
/* 805ED5C0  2C 05 02 7F */	cmpwi r5, 0x27f
/* 805ED5C4  7C 7A 1B 78 */	mr r26, r3
/* 805ED5C8  7C 83 23 78 */	mr r3, r4
/* 805ED5CC  40 80 03 CC */	bge lbl_805ED998
/* 805ED5D0  A0 83 00 04 */	lhz r4, 4(r3)
/* 805ED5D4  7C 04 00 D0 */	neg r0, r4
/* 805ED5D8  7C 05 00 00 */	cmpw r5, r0
/* 805ED5DC  40 81 03 BC */	ble lbl_805ED998
/* 805ED5E0  A1 23 00 06 */	lhz r9, 6(r3)
/* 805ED5E4  7C 09 00 D0 */	neg r0, r9
/* 805ED5E8  7C 06 00 00 */	cmpw r6, r0
/* 805ED5EC  40 81 03 AC */	ble lbl_805ED998
/* 805ED5F0  2C 06 01 DF */	cmpwi r6, 0x1df
/* 805ED5F4  41 80 00 08 */	blt lbl_805ED5FC
/* 805ED5F8  48 00 03 A0 */	b lbl_805ED998
lbl_805ED5FC:
/* 805ED5FC  2C 05 00 00 */	cmpwi r5, 0
/* 805ED600  40 80 00 14 */	bge lbl_805ED614
/* 805ED604  7E 44 2A 14 */	add r18, r4, r5
/* 805ED608  7D E5 00 D0 */	neg r15, r5
/* 805ED60C  38 A0 00 00 */	li r5, 0
/* 805ED610  48 00 00 20 */	b lbl_805ED630
lbl_805ED614:
/* 805ED614  7C 05 22 14 */	add r0, r5, r4
/* 805ED618  39 E0 00 00 */	li r15, 0
/* 805ED61C  2C 00 02 80 */	cmpwi r0, 0x280
/* 805ED620  41 80 00 0C */	blt lbl_805ED62C
/* 805ED624  22 45 02 80 */	subfic r18, r5, 0x280
/* 805ED628  48 00 00 08 */	b lbl_805ED630
lbl_805ED62C:
/* 805ED62C  7C 92 23 78 */	mr r18, r4
lbl_805ED630:
/* 805ED630  2C 06 00 00 */	cmpwi r6, 0
/* 805ED634  40 80 00 14 */	bge lbl_805ED648
/* 805ED638  7F 89 32 14 */	add r28, r9, r6
/* 805ED63C  7D 06 00 D0 */	neg r8, r6
/* 805ED640  38 C0 00 00 */	li r6, 0
/* 805ED644  48 00 00 20 */	b lbl_805ED664
lbl_805ED648:
/* 805ED648  7C 06 4A 14 */	add r0, r6, r9
/* 805ED64C  39 00 00 00 */	li r8, 0
/* 805ED650  2C 00 01 E0 */	cmpwi r0, 0x1e0
/* 805ED654  41 80 00 0C */	blt lbl_805ED660
/* 805ED658  23 86 01 DF */	subfic r28, r6, 0x1df
/* 805ED65C  48 00 00 08 */	b lbl_805ED664
lbl_805ED660:
/* 805ED660  7D 3C 4B 78 */	mr r28, r9
lbl_805ED664:
/* 805ED664  2C 07 00 00 */	cmpwi r7, 0
/* 805ED668  40 82 00 28 */	bne lbl_805ED690
/* 805ED66C  81 C3 00 14 */	lwz r14, 0x14(r3)
/* 805ED670  7C 91 23 78 */	mr r17, r4
/* 805ED674  7D 20 4B 78 */	mr r0, r9
/* 805ED678  7C AB 2B 78 */	mr r11, r5
/* 805ED67C  7C DF 33 78 */	mr r31, r6
/* 805ED680  7D 1E 43 78 */	mr r30, r8
/* 805ED684  7D EA 7B 78 */	mr r10, r15
/* 805ED688  39 80 02 80 */	li r12, 0x280
/* 805ED68C  48 00 00 24 */	b lbl_805ED6B0
lbl_805ED690:
/* 805ED690  83 63 00 14 */	lwz r27, 0x14(r3)
/* 805ED694  7C 8C 23 78 */	mr r12, r4
/* 805ED698  7D EB 7B 78 */	mr r11, r15
/* 805ED69C  7D 1F 43 78 */	mr r31, r8
/* 805ED6A0  7C DE 33 78 */	mr r30, r6
/* 805ED6A4  7C AA 2B 78 */	mr r10, r5
/* 805ED6A8  3A 20 02 80 */	li r17, 0x280
/* 805ED6AC  38 00 01 E0 */	li r0, 0x1e0
lbl_805ED6B0:
/* 805ED6B0  39 32 00 03 */	addi r9, r18, 3
/* 805ED6B4  38 92 FF FF */	addi r4, r18, -1
/* 805ED6B8  55 29 08 38 */	rlwinm r9, r9, 1, 0, 0x1c
/* 805ED6BC  3A 00 10 00 */	li r16, 0x1000
/* 805ED6C0  7F B0 4B D6 */	divw r29, r16, r9
/* 805ED6C4  7C 8A 22 14 */	add r4, r10, r4
/* 805ED6C8  7D 32 5A 14 */	add r9, r18, r11
/* 805ED6CC  2C 07 00 00 */	cmpwi r7, 0
/* 805ED6D0  54 84 10 3A */	slwi r4, r4, 2
/* 805ED6D4  39 29 FF FF */	addi r9, r9, -1
/* 805ED6D8  41 82 00 38 */	beq lbl_805ED710
/* 805ED6DC  80 9A 02 D0 */	lwz r4, 0x2d0(r26)
/* 805ED6E0  38 E0 02 80 */	li r7, 0x280
/* 805ED6E4  38 00 01 E0 */	li r0, 0x1e0
/* 805ED6E8  7C AF 28 50 */	subf r5, r15, r5
/* 805ED6EC  90 81 00 08 */	stw r4, 8(r1)
/* 805ED6F0  38 81 00 08 */	addi r4, r1, 8
/* 805ED6F4  7C C8 30 50 */	subf r6, r8, r6
/* 805ED6F8  B0 E3 00 00 */	sth r7, 0(r3)
/* 805ED6FC  B0 03 00 02 */	sth r0, 2(r3)
/* 805ED700  4B E1 6E DD */	bl PreRender_CopyRGBC
/* 805ED704  80 01 00 08 */	lwz r0, 8(r1)
/* 805ED708  90 1A 02 D0 */	stw r0, 0x2d0(r26)
/* 805ED70C  48 00 02 8C */	b lbl_805ED998
lbl_805ED710:
/* 805ED710  81 1A 02 D0 */	lwz r8, 0x2d0(r26)
/* 805ED714  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 805ED718  3D E0 43 30 */	lis r15, 0x4330
/* 805ED71C  6E 30 80 00 */	xoris r16, r17, 0x8000
/* 805ED720  38 A8 00 08 */	addi r5, r8, 8
/* 805ED724  3A AC FF FF */	addi r21, r12, -1
/* 805ED728  90 BA 02 D0 */	stw r5, 0x2d0(r26)
/* 805ED72C  3C 00 E7 00 */	lis r0, 0xe700
/* 805ED730  3C A0 80 65 */	lis r5, lit_458@ha /* 0x8064B78C@ha */
/* 805ED734  3A 31 FF FF */	addi r17, r17, -1
/* 805ED738  90 08 00 00 */	stw r0, 0(r8)
/* 805ED73C  38 E5 B7 8C */	addi r7, r5, lit_458@l /* 0x8064B78C@l */
/* 805ED740  3A 80 00 00 */	li r20, 0
/* 805ED744  3C A0 80 65 */	lis r5, data_8064B784@ha /* 0x8064B784@ha */
/* 805ED748  92 88 00 04 */	stw r20, 4(r8)
/* 805ED74C  39 05 B7 84 */	addi r8, r5, data_8064B784@l /* 0x8064B784@l */
/* 805ED750  7C AB 48 50 */	subf r5, r11, r9
/* 805ED754  55 63 72 22 */	rlwinm r3, r11, 0xe, 8, 0x11
/* 805ED758  82 7A 02 D0 */	lwz r19, 0x2d0(r26)
/* 805ED75C  38 A5 00 01 */	addi r5, r5, 1
/* 805ED760  55 2C 72 22 */	rlwinm r12, r9, 0xe, 8, 0x11
/* 805ED764  90 C1 00 24 */	stw r6, 0x24(r1)
/* 805ED768  3A D3 00 08 */	addi r22, r19, 8
/* 805ED76C  54 A9 08 3C */	slwi r9, r5, 1
/* 805ED770  92 DA 02 D0 */	stw r22, 0x2d0(r26)
/* 805ED774  3E C0 D9 00 */	lis r22, 0xd900
/* 805ED778  C8 47 00 00 */	lfd f2, 0(r7)
/* 805ED77C  39 29 00 07 */	addi r9, r9, 7
/* 805ED780  92 D3 00 00 */	stw r22, 0(r19)
/* 805ED784  56 A5 05 3E */	clrlwi r5, r21, 0x14
/* 805ED788  7D 35 1E 70 */	srawi r21, r9, 3
/* 805ED78C  54 89 62 26 */	rlwinm r9, r4, 0xc, 8, 0x13
/* 805ED790  92 93 00 04 */	stw r20, 4(r19)
/* 805ED794  3E 40 EF 20 */	lis r18, 0xEF20 /* 0xEF202CF0@ha */
/* 805ED798  56 B4 4B AC */	rlwinm r20, r21, 9, 0xe, 0x16
/* 805ED79C  C0 68 00 00 */	lfs f3, 0(r8)
/* 805ED7A0  82 7A 02 D0 */	lwz r19, 0x2d0(r26)
/* 805ED7A4  3A D2 2C F0 */	addi r22, r18, 0x2CF0 /* 0xEF202CF0@l */
/* 805ED7A8  91 E1 00 20 */	stw r15, 0x20(r1)
/* 805ED7AC  56 31 05 3E */	clrlwi r17, r17, 0x14
/* 805ED7B0  38 93 00 08 */	addi r4, r19, 8
/* 805ED7B4  3A A0 00 04 */	li r21, 4
/* 805ED7B8  90 9A 02 D0 */	stw r4, 0x2d0(r26)
/* 805ED7BC  66 32 FF 10 */	oris r18, r17, 0xff10
/* 805ED7C0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805ED7C4  64 A4 FD 10 */	oris r4, r5, 0xfd10
/* 805ED7C8  92 D3 00 00 */	stw r22, 0(r19)
/* 805ED7CC  64 66 F4 00 */	oris r6, r3, 0xf400
/* 805ED7D0  EC 00 10 28 */	fsubs f0, f0, f2
/* 805ED7D4  64 68 F2 00 */	oris r8, r3, 0xf200
/* 805ED7D8  92 B3 00 04 */	stw r21, 4(r19)
/* 805ED7DC  3E 20 ED 00 */	lis r17, 0xed00
/* 805ED7E0  66 85 F5 10 */	oris r5, r20, 0xf510
/* 805ED7E4  65 87 07 00 */	oris r7, r12, 0x700
/* 805ED7E8  82 7A 02 D0 */	lwz r19, 0x2d0(r26)
/* 805ED7EC  EC 03 00 32 */	fmuls f0, f3, f0
/* 805ED7F0  92 01 00 14 */	stw r16, 0x14(r1)
/* 805ED7F4  65 29 E4 00 */	oris r9, r9, 0xe400
/* 805ED7F8  38 73 00 08 */	addi r3, r19, 8
/* 805ED7FC  55 4A 72 22 */	rlwinm r10, r10, 0xe, 8, 0x11
/* 805ED800  91 E1 00 10 */	stw r15, 0x10(r1)
/* 805ED804  FC 00 00 1E */	fctiwz f0, f0
/* 805ED808  55 6B A8 14 */	slwi r11, r11, 0x15
/* 805ED80C  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 805ED810  90 7A 02 D0 */	stw r3, 0x2d0(r26)
/* 805ED814  EC 21 10 28 */	fsubs f1, f1, f2
/* 805ED818  92 53 00 00 */	stw r18, 0(r19)
/* 805ED81C  EC 23 00 72 */	fmuls f1, f3, f1
/* 805ED820  91 D3 00 04 */	stw r14, 4(r19)
/* 805ED824  82 1A 02 D0 */	lwz r16, 0x2d0(r26)
/* 805ED828  FC 20 08 1E */	fctiwz f1, f1
/* 805ED82C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 805ED830  39 F0 00 08 */	addi r15, r16, 8
/* 805ED834  91 FA 02 D0 */	stw r15, 0x2d0(r26)
/* 805ED838  3D E0 07 00 */	lis r15, 0x700
/* 805ED83C  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 805ED840  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 805ED844  54 63 05 3E */	clrlwi r3, r3, 0x14
/* 805ED848  81 C1 00 1C */	lwz r14, 0x1c(r1)
/* 805ED84C  92 30 00 00 */	stw r17, 0(r16)
/* 805ED850  51 C3 62 26 */	rlwimi r3, r14, 0xc, 8, 0x13
/* 805ED854  90 70 00 04 */	stw r3, 4(r16)
/* 805ED858  3C 60 10 00 */	lis r3, 0x1000 /* 0x10000400@ha */
/* 805ED85C  3B 23 04 00 */	addi r25, r3, 0x0400 /* 0x10000400@l */
/* 805ED860  3E 00 E6 00 */	lis r16, 0xe600
/* 805ED864  48 00 01 2C */	b lbl_805ED990
lbl_805ED868:
/* 805ED868  7C 1D E0 00 */	cmpw r29, r28
/* 805ED86C  40 81 00 08 */	ble lbl_805ED874
/* 805ED870  7F 9D E3 78 */	mr r29, r28
lbl_805ED874:
/* 805ED874  80 7A 02 D0 */	lwz r3, 0x2d0(r26)
/* 805ED878  57 F4 15 3A */	rlwinm r20, r31, 2, 0x14, 0x1d
/* 805ED87C  7C D2 A3 78 */	or r18, r6, r20
/* 805ED880  57 D7 15 3A */	rlwinm r23, r30, 2, 0x14, 0x1d
/* 805ED884  39 C3 00 08 */	addi r14, r3, 8
/* 805ED888  57 F8 2C 34 */	rlwinm r24, r31, 5, 0x10, 0x1a
/* 805ED88C  91 DA 02 D0 */	stw r14, 0x2d0(r26)
/* 805ED890  3A 3D FF FF */	addi r17, r29, -1
/* 805ED894  7D DF 8A 14 */	add r14, r31, r17
/* 805ED898  7D 14 A3 78 */	or r20, r8, r20
/* 805ED89C  90 83 00 00 */	stw r4, 0(r3)
/* 805ED8A0  55 CE 15 3A */	rlwinm r14, r14, 2, 0x14, 0x1d
/* 805ED8A4  7E 3E 8A 14 */	add r17, r30, r17
/* 805ED8A8  7D 57 BB 78 */	or r23, r10, r23
/* 805ED8AC  93 63 00 04 */	stw r27, 4(r3)
/* 805ED8B0  56 36 15 3A */	rlwinm r22, r17, 2, 0x14, 0x1d
/* 805ED8B4  7C F3 73 78 */	or r19, r7, r14
/* 805ED8B8  7D 95 73 78 */	or r21, r12, r14
/* 805ED8BC  80 7A 02 D0 */	lwz r3, 0x2d0(r26)
/* 805ED8C0  3A 20 00 00 */	li r17, 0
/* 805ED8C4  7D 36 B3 78 */	or r22, r9, r22
/* 805ED8C8  7D 78 C3 78 */	or r24, r11, r24
/* 805ED8CC  39 C3 00 08 */	addi r14, r3, 8
/* 805ED8D0  7F FF EA 14 */	add r31, r31, r29
/* 805ED8D4  91 DA 02 D0 */	stw r14, 0x2d0(r26)
/* 805ED8D8  7F DE EA 14 */	add r30, r30, r29
/* 805ED8DC  7F 9D E0 50 */	subf r28, r29, r28
/* 805ED8E0  90 A3 00 00 */	stw r5, 0(r3)
/* 805ED8E4  91 E3 00 04 */	stw r15, 4(r3)
/* 805ED8E8  80 7A 02 D0 */	lwz r3, 0x2d0(r26)
/* 805ED8EC  39 C3 00 08 */	addi r14, r3, 8
/* 805ED8F0  91 DA 02 D0 */	stw r14, 0x2d0(r26)
/* 805ED8F4  92 03 00 00 */	stw r16, 0(r3)
/* 805ED8F8  92 23 00 04 */	stw r17, 4(r3)
/* 805ED8FC  80 7A 02 D0 */	lwz r3, 0x2d0(r26)
/* 805ED900  39 C3 00 08 */	addi r14, r3, 8
/* 805ED904  91 DA 02 D0 */	stw r14, 0x2d0(r26)
/* 805ED908  92 43 00 00 */	stw r18, 0(r3)
/* 805ED90C  92 63 00 04 */	stw r19, 4(r3)
/* 805ED910  81 DA 02 D0 */	lwz r14, 0x2d0(r26)
/* 805ED914  38 6E 00 08 */	addi r3, r14, 8
/* 805ED918  90 7A 02 D0 */	stw r3, 0x2d0(r26)
/* 805ED91C  90 0E 00 00 */	stw r0, 0(r14)
/* 805ED920  92 2E 00 04 */	stw r17, 4(r14)
/* 805ED924  81 DA 02 D0 */	lwz r14, 0x2d0(r26)
/* 805ED928  38 6E 00 08 */	addi r3, r14, 8
/* 805ED92C  90 7A 02 D0 */	stw r3, 0x2d0(r26)
/* 805ED930  90 AE 00 00 */	stw r5, 0(r14)
/* 805ED934  92 2E 00 04 */	stw r17, 4(r14)
/* 805ED938  81 DA 02 D0 */	lwz r14, 0x2d0(r26)
/* 805ED93C  38 6E 00 08 */	addi r3, r14, 8
/* 805ED940  90 7A 02 D0 */	stw r3, 0x2d0(r26)
/* 805ED944  92 8E 00 00 */	stw r20, 0(r14)
/* 805ED948  92 AE 00 04 */	stw r21, 4(r14)
/* 805ED94C  81 DA 02 D0 */	lwz r14, 0x2d0(r26)
/* 805ED950  38 6E 00 08 */	addi r3, r14, 8
/* 805ED954  90 7A 02 D0 */	stw r3, 0x2d0(r26)
/* 805ED958  92 CE 00 00 */	stw r22, 0(r14)
/* 805ED95C  92 EE 00 04 */	stw r23, 4(r14)
/* 805ED960  81 DA 02 D0 */	lwz r14, 0x2d0(r26)
/* 805ED964  38 6E 00 08 */	addi r3, r14, 8
/* 805ED968  90 7A 02 D0 */	stw r3, 0x2d0(r26)
/* 805ED96C  3C 60 E1 00 */	lis r3, 0xe100
/* 805ED970  90 6E 00 00 */	stw r3, 0(r14)
/* 805ED974  93 0E 00 04 */	stw r24, 4(r14)
/* 805ED978  81 DA 02 D0 */	lwz r14, 0x2d0(r26)
/* 805ED97C  38 6E 00 08 */	addi r3, r14, 8
/* 805ED980  90 7A 02 D0 */	stw r3, 0x2d0(r26)
/* 805ED984  3C 60 F1 00 */	lis r3, 0xf100
/* 805ED988  90 6E 00 00 */	stw r3, 0(r14)
/* 805ED98C  93 2E 00 04 */	stw r25, 4(r14)
lbl_805ED990:
/* 805ED990  2C 1C 00 00 */	cmpwi r28, 0
/* 805ED994  41 81 FE D4 */	bgt lbl_805ED868
lbl_805ED998:
/* 805ED998  39 61 00 80 */	addi r11, r1, 0x80
/* 805ED99C  4B AA D5 49 */	bl __restore_gpr
/* 805ED9A0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805ED9A4  7C 08 03 A6 */	mtlr r0
/* 805ED9A8  38 21 00 80 */	addi r1, r1, 0x80
/* 805ED9AC  4E 80 00 20 */	blr 
