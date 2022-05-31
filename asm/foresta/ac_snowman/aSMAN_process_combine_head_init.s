lbl_804A7004:
/* 804A7004  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804A7008  7C 08 02 A6 */	mflr r0
/* 804A700C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A7010  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804A7014  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804A7018  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A701C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804A7020  83 C3 01 4C */	lwz r30, 0x14c(r3)
/* 804A7024  3C 80 80 64 */	lis r4, lit_644@ha /* 0x80645CC4@ha */
/* 804A7028  38 A4 5C C4 */	addi r5, r4, lit_644@l /* 0x80645CC4@l */
/* 804A702C  3C C0 80 64 */	lis r6, lit_469@ha /* 0x80645C90@ha */
/* 804A7030  C0 03 01 D0 */	lfs f0, 0x1d0(r3)
/* 804A7034  39 06 5C 90 */	addi r8, r6, lit_469@l /* 0x80645C90@l */
/* 804A7038  C0 5E 01 D0 */	lfs f2, 0x1d0(r30)
/* 804A703C  38 00 00 00 */	li r0, 0
/* 804A7040  C0 85 00 00 */	lfs f4, 0(r5)
/* 804A7044  3C 80 80 64 */	lis r4, lit_471@ha /* 0x80645C98@ha */
/* 804A7048  B0 03 01 FA */	sth r0, 0x1fa(r3)
/* 804A704C  38 A4 5C 98 */	addi r5, r4, lit_471@l /* 0x80645C98@l */
/* 804A7050  EC 64 00 32 */	fmuls f3, f4, f0
/* 804A7054  C0 C8 00 00 */	lfs f6, 0(r8)
/* 804A7058  80 83 01 4C */	lwz r4, 0x14c(r3)
/* 804A705C  EC 44 00 B2 */	fmuls f2, f4, f2
/* 804A7060  C0 23 00 60 */	lfs f1, 0x60(r3)
/* 804A7064  3C E0 80 64 */	lis r7, lit_1431@ha /* 0x80645DA8@ha */
/* 804A7068  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 804A706C  EC A6 18 2A */	fadds f5, f6, f3
/* 804A7070  EC 86 10 2A */	fadds f4, f6, f2
/* 804A7074  3C C0 80 64 */	lis r6, lit_683@ha /* 0x80645CEC@ha */
/* 804A7078  EC 01 00 2A */	fadds f0, f1, f0
/* 804A707C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804A7080  C0 67 5D A8 */	lfs f3, lit_1431@l(r7)  /* 0x80645DA8@l */
/* 804A7084  EF E5 20 2A */	fadds f31, f5, f4
/* 804A7088  EC 06 00 32 */	fmuls f0, f6, f0
/* 804A708C  C0 46 5C EC */	lfs f2, lit_683@l(r6)  /* 0x80645CEC@l */
/* 804A7090  7C 7F 1B 78 */	mr r31, r3
/* 804A7094  EF FF 00 F2 */	fmuls f31, f31, f3
/* 804A7098  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A709C  EC 22 00 32 */	fmuls f1, f2, f0
/* 804A70A0  4B EC D1 31 */	bl func_803741D0
/* 804A70A4  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 804A70A8  38 00 F3 80 */	li r0, -3200
/* 804A70AC  38 61 00 08 */	addi r3, r1, 8
/* 804A70B0  38 80 00 03 */	li r4, 3
/* 804A70B4  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 804A70B8  38 A0 00 64 */	li r5, 0x64
/* 804A70BC  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 804A70C0  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 804A70C4  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 804A70C8  EC 00 F8 2A */	fadds f0, f0, f31
/* 804A70CC  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 804A70D0  B0 1F 00 DC */	sth r0, 0xdc(r31)
/* 804A70D4  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 804A70D8  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804A70DC  90 C1 00 08 */	stw r6, 8(r1)
/* 804A70E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A70E4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804A70E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A70EC  4B EE A9 B1 */	bl mCoBG_SetPlussOffset
/* 804A70F0  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 804A70F4  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 804A70F8  40 82 00 14 */	bne lbl_804A710C
/* 804A70FC  A8 1F 01 F8 */	lha r0, 0x1f8(r31)
/* 804A7100  60 00 00 40 */	ori r0, r0, 0x40
/* 804A7104  B0 1F 01 F8 */	sth r0, 0x1f8(r31)
/* 804A7108  48 00 00 18 */	b lbl_804A7120
lbl_804A710C:
/* 804A710C  3C 60 80 4A */	lis r3, aSMAN_set_talk_info_combine_head_init@ha /* 0x804A6F48@ha */
/* 804A7110  7F E4 FB 78 */	mr r4, r31
/* 804A7114  38 A3 6F 48 */	addi r5, r3, aSMAN_set_talk_info_combine_head_init@l /* 0x804A6F48@l */
/* 804A7118  38 60 00 08 */	li r3, 8
/* 804A711C  4B EF 30 41 */	bl mDemo_Request
lbl_804A7120:
/* 804A7120  3C 60 80 4A */	lis r3, aSMAN_process_combine_head@ha /* 0x804A714C@ha */
/* 804A7124  38 03 71 4C */	addi r0, r3, aSMAN_process_combine_head@l /* 0x804A714C@l */
/* 804A7128  90 1F 01 90 */	stw r0, 0x190(r31)
/* 804A712C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804A7130  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A7134  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804A7138  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A713C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804A7140  7C 08 03 A6 */	mtlr r0
/* 804A7144  38 21 00 30 */	addi r1, r1, 0x30
/* 804A7148  4E 80 00 20 */	blr 
