lbl_804A3134:
/* 804A3134  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804A3138  7C 08 02 A6 */	mflr r0
/* 804A313C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A3140  39 61 00 30 */	addi r11, r1, 0x30
/* 804A3144  4B BF 7D 89 */	bl func_8009AECC
/* 804A3148  83 E3 00 00 */	lwz r31, 0(r3)
/* 804A314C  7C 7C 1B 78 */	mr r28, r3
/* 804A3150  80 64 00 00 */	lwz r3, 0(r4)
/* 804A3154  7C 9D 23 78 */	mr r29, r4
/* 804A3158  80 1F 02 D4 */	lwz r0, 0x2d4(r31)
/* 804A315C  54 63 20 36 */	slwi r3, r3, 4
/* 804A3160  7C 63 00 51 */	subf. r3, r3, r0
/* 804A3164  90 7F 02 D4 */	stw r3, 0x2d4(r31)
/* 804A3168  7C 7B 1B 78 */	mr r27, r3
/* 804A316C  41 82 00 30 */	beq lbl_804A319C
/* 804A3170  C0 3C 1D 80 */	lfs f1, 0x1d80(r28)
/* 804A3174  C0 1D 00 08 */	lfs f0, 8(r29)
/* 804A3178  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 804A317C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A3180  80 BD 00 00 */	lwz r5, 0(r29)
/* 804A3184  80 DD 00 04 */	lwz r6, 4(r29)
/* 804A3188  FC 00 00 1E */	fctiwz f0, f0
/* 804A318C  D8 01 00 08 */	stfd f0, 8(r1)
/* 804A3190  80 E1 00 0C */	lwz r7, 0xc(r1)
/* 804A3194  4B FF FF 4D */	bl aSIGN_copy_vtx
/* 804A3198  48 00 00 08 */	b lbl_804A31A0
lbl_804A319C:
/* 804A319C  83 7D 00 0C */	lwz r27, 0xc(r29)
lbl_804A31A0:
/* 804A31A0  83 DF 03 00 */	lwz r30, 0x300(r31)
/* 804A31A4  3C 00 E7 00 */	lis r0, 0xe700
/* 804A31A8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804A31AC  38 80 00 00 */	li r4, 0
/* 804A31B0  90 1E 00 00 */	stw r0, 0(r30)
/* 804A31B4  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804A31B8  7F E3 FB 78 */	mr r3, r31
/* 804A31BC  90 9E 00 04 */	stw r4, 4(r30)
/* 804A31C0  90 1E 00 08 */	stw r0, 8(r30)
/* 804A31C4  4B F6 A2 11 */	bl _Matrix_to_Mtx_new
/* 804A31C8  3C 80 DB 06 */	lis r4, 0xDB06 /* 0xDB060028@ha */
/* 804A31CC  90 7E 00 0C */	stw r3, 0xc(r30)
/* 804A31D0  38 64 00 28 */	addi r3, r4, 0x0028 /* 0xDB060028@l */
/* 804A31D4  3C 00 DE 00 */	lis r0, 0xde00
/* 804A31D8  90 7E 00 10 */	stw r3, 0x10(r30)
/* 804A31DC  39 61 00 30 */	addi r11, r1, 0x30
/* 804A31E0  93 7E 00 14 */	stw r27, 0x14(r30)
/* 804A31E4  88 BC 1D 84 */	lbz r5, 0x1d84(r28)
/* 804A31E8  88 7C 1D 6B */	lbz r3, 0x1d6b(r28)
/* 804A31EC  88 DC 1D 6A */	lbz r6, 0x1d6a(r28)
/* 804A31F0  64 A4 FA 00 */	oris r4, r5, 0xfa00
/* 804A31F4  88 FC 1D 6C */	lbz r7, 0x1d6c(r28)
/* 804A31F8  54 63 80 1E */	slwi r3, r3, 0x10
/* 804A31FC  50 C3 C0 0E */	rlwimi r3, r6, 0x18, 0, 7
/* 804A3200  50 E3 44 2E */	rlwimi r3, r7, 8, 0x10, 0x17
/* 804A3204  90 9E 00 18 */	stw r4, 0x18(r30)
/* 804A3208  7C A3 1B 78 */	or r3, r5, r3
/* 804A320C  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 804A3210  3B DE 00 20 */	addi r30, r30, 0x20
/* 804A3214  7F C3 F3 78 */	mr r3, r30
/* 804A3218  90 1E 00 00 */	stw r0, 0(r30)
/* 804A321C  3B DE 00 08 */	addi r30, r30, 8
/* 804A3220  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 804A3224  90 03 00 04 */	stw r0, 4(r3)
/* 804A3228  93 DF 03 00 */	stw r30, 0x300(r31)
/* 804A322C  4B BF 7C ED */	bl func_8009AF18
/* 804A3230  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A3234  7C 08 03 A6 */	mtlr r0
/* 804A3238  38 21 00 30 */	addi r1, r1, 0x30
/* 804A323C  4E 80 00 20 */	blr 
