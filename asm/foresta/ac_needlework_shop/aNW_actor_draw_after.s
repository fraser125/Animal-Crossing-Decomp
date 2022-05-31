lbl_805B7014:
/* 805B7014  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805B7018  7C 08 02 A6 */	mflr r0
/* 805B701C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805B7020  39 61 00 30 */	addi r11, r1, 0x30
/* 805B7024  4B AE 3E A1 */	bl func_8009AEC4
/* 805B7028  2C 05 00 06 */	cmpwi r5, 6
/* 805B702C  83 C3 00 00 */	lwz r30, 0(r3)
/* 805B7030  7D 1D 43 78 */	mr r29, r8
/* 805B7034  40 82 00 E0 */	bne lbl_805B7114
/* 805B7038  7F C3 F3 78 */	mr r3, r30
/* 805B703C  4B E5 63 99 */	bl _Matrix_to_Mtx_new
/* 805B7040  7C 7F 1B 79 */	or. r31, r3, r3
/* 805B7044  41 82 00 D0 */	beq lbl_805B7114
/* 805B7048  3C 60 80 65 */	lis r3, lit_442@ha /* 0x8064A9C8@ha */
/* 805B704C  C0 5D 02 C8 */	lfs f2, 0x2c8(r29)
/* 805B7050  C0 03 A9 C8 */	lfs f0, lit_442@l(r3)  /* 0x8064A9C8@l */
/* 805B7054  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805B7058  40 81 00 38 */	ble lbl_805B7090
/* 805B705C  3C 60 80 65 */	lis r3, lit_712@ha /* 0x8064A9F0@ha */
/* 805B7060  3C 80 80 65 */	lis r4, lit_599@ha /* 0x8064A9E0@ha */
/* 805B7064  C0 03 A9 F0 */	lfs f0, lit_712@l(r3)  /* 0x8064A9F0@l */
/* 805B7068  3B 60 00 FF */	li r27, 0xff
/* 805B706C  C0 24 A9 E0 */	lfs f1, lit_599@l(r4)  /* 0x8064A9E0@l */
/* 805B7070  3B 40 00 FF */	li r26, 0xff
/* 805B7074  EC 00 00 B2 */	fmuls f0, f0, f2
/* 805B7078  3B 20 00 96 */	li r25, 0x96
/* 805B707C  EC 01 00 2A */	fadds f0, f1, f0
/* 805B7080  FC 00 00 1E */	fctiwz f0, f0
/* 805B7084  D8 01 00 08 */	stfd f0, 8(r1)
/* 805B7088  83 81 00 0C */	lwz r28, 0xc(r1)
/* 805B708C  48 00 00 14 */	b lbl_805B70A0
lbl_805B7090:
/* 805B7090  3B 80 00 00 */	li r28, 0
/* 805B7094  3B 60 00 00 */	li r27, 0
/* 805B7098  3B 40 00 00 */	li r26, 0
/* 805B709C  3B 20 00 00 */	li r25, 0
lbl_805B70A0:
/* 805B70A0  80 1D 02 D8 */	lwz r0, 0x2d8(r29)
/* 805B70A4  7F C3 F3 78 */	mr r3, r30
/* 805B70A8  20 00 00 03 */	subfic r0, r0, 3
/* 805B70AC  7C 00 00 34 */	cntlzw r0, r0
/* 805B70B0  54 1D D9 7E */	srwi r29, r0, 5
/* 805B70B4  4B E2 E0 7D */	bl _texture_z_light_fog_prim_shadow
/* 805B70B8  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 805B70BC  80 DE 03 00 */	lwz r6, 0x300(r30)
/* 805B70C0  64 03 FA 00 */	oris r3, r0, 0xfa00
/* 805B70C4  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 805B70C8  90 66 00 00 */	stw r3, 0(r6)
/* 805B70CC  57 40 82 1E */	rlwinm r0, r26, 0x10, 8, 0xf
/* 805B70D0  53 60 C0 0E */	rlwimi r0, r27, 0x18, 0, 7
/* 805B70D4  38 A4 00 03 */	addi r5, r4, 0x0003 /* 0xDA380003@l */
/* 805B70D8  53 20 44 2E */	rlwimi r0, r25, 8, 0x10, 0x17
/* 805B70DC  3C 60 80 6C */	lis r3, mdl@ha /* 0x806C61C8@ha */
/* 805B70E0  90 06 00 04 */	stw r0, 4(r6)
/* 805B70E4  3C 80 DE 00 */	lis r4, 0xde00
/* 805B70E8  57 A0 10 3A */	slwi r0, r29, 2
/* 805B70EC  38 63 61 C8 */	addi r3, r3, mdl@l /* 0x806C61C8@l */
/* 805B70F0  90 A6 00 08 */	stw r5, 8(r6)
/* 805B70F4  93 E6 00 0C */	stw r31, 0xc(r6)
/* 805B70F8  38 C6 00 10 */	addi r6, r6, 0x10
/* 805B70FC  7C C5 33 78 */	mr r5, r6
/* 805B7100  90 86 00 00 */	stw r4, 0(r6)
/* 805B7104  38 C6 00 08 */	addi r6, r6, 8
/* 805B7108  7C 03 00 2E */	lwzx r0, r3, r0
/* 805B710C  90 05 00 04 */	stw r0, 4(r5)
/* 805B7110  90 DE 03 00 */	stw r6, 0x300(r30)
lbl_805B7114:
/* 805B7114  38 60 00 01 */	li r3, 1
/* 805B7118  39 61 00 30 */	addi r11, r1, 0x30
/* 805B711C  4B AE 3D F5 */	bl func_8009AF10
/* 805B7120  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805B7124  7C 08 03 A6 */	mtlr r0
/* 805B7128  38 21 00 30 */	addi r1, r1, 0x30
/* 805B712C  4E 80 00 20 */	blr 
