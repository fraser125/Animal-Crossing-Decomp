lbl_80615BAC:
/* 80615BAC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80615BB0  7C 08 02 A6 */	mflr r0
/* 80615BB4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80615BB8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80615BBC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80615BC0  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80615BC4  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80615BC8  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80615BCC  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 80615BD0  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 80615BD4  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 80615BD8  DB 61 00 30 */	stfd f27, 0x30(r1)
/* 80615BDC  F3 61 00 38 */	psq_st f27, 56(r1), 0, 0 /* qr0 */
/* 80615BE0  39 61 00 30 */	addi r11, r1, 0x30
/* 80615BE4  4B A8 52 E9 */	bl func_8009AECC
/* 80615BE8  7C 7B 1B 78 */	mr r27, r3
/* 80615BEC  7C 9C 23 78 */	mr r28, r4
/* 80615BF0  A8 03 00 00 */	lha r0, 0(r3)
/* 80615BF4  3B DB 00 34 */	addi r30, r27, 0x34
/* 80615BF8  AB E3 00 4E */	lha r31, 0x4e(r3)
/* 80615BFC  20 00 00 70 */	subfic r0, r0, 0x70
/* 80615C00  7F E3 FB 78 */	mr r3, r31
/* 80615C04  7C 1D 07 34 */	extsh r29, r0
/* 80615C08  4B DA 4E E9 */	bl sin_s
/* 80615C0C  FF 60 08 90 */	fmr f27, f1
/* 80615C10  7F E3 FB 78 */	mr r3, r31
/* 80615C14  4B DA 4E 89 */	bl cos_s
/* 80615C18  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80615C1C  3C A0 80 65 */	lis r5, lit_413@ha /* 0x8064C6DC@ha */
/* 80615C20  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80615C24  C0 45 C6 DC */	lfs f2, lit_413@l(r5)  /* 0x8064C6DC@l */
/* 80615C28  3F E3 00 02 */	addis r31, r3, 2
/* 80615C2C  3C C0 80 65 */	lis r6, lit_412@ha /* 0x8064C6D8@ha */
/* 80615C30  80 9F 60 9C */	lwz r4, 0x609c(r31)
/* 80615C34  FF 80 08 90 */	fmr f28, f1
/* 80615C38  7F A3 EB 78 */	mr r3, r29
/* 80615C3C  C0 26 C6 D8 */	lfs f1, lit_412@l(r6)  /* 0x8064C6D8@l */
/* 80615C40  81 84 00 14 */	lwz r12, 0x14(r4)
/* 80615C44  38 80 00 00 */	li r4, 0
/* 80615C48  38 A0 00 1E */	li r5, 0x1e
/* 80615C4C  7D 89 03 A6 */	mtctr r12
/* 80615C50  4E 80 04 21 */	bctrl 
/* 80615C54  80 7F 60 9C */	lwz r3, 0x609c(r31)
/* 80615C58  3C 80 80 65 */	lis r4, lit_415@ha /* 0x8064C6E4@ha */
/* 80615C5C  C0 44 C6 E4 */	lfs f2, lit_415@l(r4)  /* 0x8064C6E4@l */
/* 80615C60  3C A0 80 65 */	lis r5, lit_414@ha /* 0x8064C6E0@ha */
/* 80615C64  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80615C68  FF A0 08 90 */	fmr f29, f1
/* 80615C6C  C0 25 C6 E0 */	lfs f1, lit_414@l(r5)  /* 0x8064C6E0@l */
/* 80615C70  7F A3 EB 78 */	mr r3, r29
/* 80615C74  38 80 00 00 */	li r4, 0
/* 80615C78  38 A0 00 1E */	li r5, 0x1e
/* 80615C7C  7D 89 03 A6 */	mtctr r12
/* 80615C80  4E 80 04 21 */	bctrl 
/* 80615C84  80 7F 60 9C */	lwz r3, 0x609c(r31)
/* 80615C88  3C 80 80 65 */	lis r4, lit_417@ha /* 0x8064C6EC@ha */
/* 80615C8C  C0 44 C6 EC */	lfs f2, lit_417@l(r4)  /* 0x8064C6EC@l */
/* 80615C90  3C A0 80 65 */	lis r5, lit_416@ha /* 0x8064C6E8@ha */
/* 80615C94  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80615C98  FF C0 08 90 */	fmr f30, f1
/* 80615C9C  C0 25 C6 E8 */	lfs f1, lit_416@l(r5)  /* 0x8064C6E8@l */
/* 80615CA0  7F A3 EB 78 */	mr r3, r29
/* 80615CA4  38 80 00 00 */	li r4, 0
/* 80615CA8  38 A0 00 1E */	li r5, 0x1e
/* 80615CAC  7D 89 03 A6 */	mtctr r12
/* 80615CB0  4E 80 04 21 */	bctrl 
/* 80615CB4  80 7F 60 9C */	lwz r3, 0x609c(r31)
/* 80615CB8  3C 80 80 65 */	lis r4, lit_419@ha /* 0x8064C6F4@ha */
/* 80615CBC  C0 44 C6 F4 */	lfs f2, lit_419@l(r4)  /* 0x8064C6F4@l */
/* 80615CC0  3C A0 80 65 */	lis r5, lit_418@ha /* 0x8064C6F0@ha */
/* 80615CC4  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80615CC8  FF E0 08 90 */	fmr f31, f1
/* 80615CCC  C0 25 C6 F0 */	lfs f1, lit_418@l(r5)  /* 0x8064C6F0@l */
/* 80615CD0  7F A3 EB 78 */	mr r3, r29
/* 80615CD4  38 80 00 60 */	li r4, 0x60
/* 80615CD8  38 A0 00 70 */	li r5, 0x70
/* 80615CDC  7D 89 03 A6 */	mtctr r12
/* 80615CE0  4E 80 04 21 */	bctrl 
/* 80615CE4  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064C6D0@ha */
/* 80615CE8  3C 80 80 65 */	lis r4, lit_420@ha /* 0x8064C6F8@ha */
/* 80615CEC  C0 03 C6 D0 */	lfs f0, lit_387@l(r3)  /* 0x8064C6D0@l */
/* 80615CF0  FC 60 08 1E */	fctiwz f3, f1
/* 80615CF4  C0 44 C6 F8 */	lfs f2, lit_420@l(r4)  /* 0x8064C6F8@l */
/* 80615CF8  EC 9E F8 28 */	fsubs f4, f30, f31
/* 80615CFC  EC 20 D8 2A */	fadds f1, f0, f27
/* 80615D00  7F 83 E3 78 */	mr r3, r28
/* 80615D04  EC 00 E0 2A */	fadds f0, f0, f28
/* 80615D08  D8 61 00 08 */	stfd f3, 8(r1)
/* 80615D0C  7F C5 F3 78 */	mr r5, r30
/* 80615D10  EC 22 00 72 */	fmuls f1, f2, f1
/* 80615D14  EC 02 00 32 */	fmuls f0, f2, f0
/* 80615D18  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80615D1C  38 9B 00 10 */	addi r4, r27, 0x10
/* 80615D20  38 DB 00 40 */	addi r6, r27, 0x40
/* 80615D24  EC 21 01 32 */	fmuls f1, f1, f4
/* 80615D28  EC 00 01 32 */	fmuls f0, f0, f4
/* 80615D2C  54 1B 06 3E */	clrlwi r27, r0, 0x18
/* 80615D30  EC 3F 08 2A */	fadds f1, f31, f1
/* 80615D34  EC 1F 00 2A */	fadds f0, f31, f0
/* 80615D38  EC 3D 00 72 */	fmuls f1, f29, f1
/* 80615D3C  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80615D40  D0 3E 00 00 */	stfs f1, 0(r30)
/* 80615D44  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80615D48  D3 BE 00 08 */	stfs f29, 8(r30)
/* 80615D4C  80 FF 60 9C */	lwz r7, 0x609c(r31)
/* 80615D50  83 9C 00 00 */	lwz r28, 0(r28)
/* 80615D54  81 87 00 1C */	lwz r12, 0x1c(r7)
/* 80615D58  7D 89 03 A6 */	mtctr r12
/* 80615D5C  4E 80 04 21 */	bctrl 
/* 80615D60  80 FC 02 E0 */	lwz r7, 0x2e0(r28)
/* 80615D64  3C 80 FA 00 */	lis r4, 0xFA00 /* 0xFA0000FF@ha */
/* 80615D68  67 65 FF FF */	oris r5, r27, 0xffff
/* 80615D6C  3C 60 80 CB */	lis r3, ef_lovelove02_00_modelT@ha /* 0x80CB7EC0@ha */
/* 80615D70  38 07 00 08 */	addi r0, r7, 8
/* 80615D74  38 C4 00 FF */	addi r6, r4, 0x00FF /* 0xFA0000FF@l */
/* 80615D78  90 1C 02 E0 */	stw r0, 0x2e0(r28)
/* 80615D7C  60 A5 FF 00 */	ori r5, r5, 0xff00
/* 80615D80  3C 80 DE 00 */	lis r4, 0xde00
/* 80615D84  38 03 7E C0 */	addi r0, r3, ef_lovelove02_00_modelT@l /* 0x80CB7EC0@l */
/* 80615D88  90 C7 00 00 */	stw r6, 0(r7)
/* 80615D8C  90 A7 00 04 */	stw r5, 4(r7)
/* 80615D90  80 BC 02 E0 */	lwz r5, 0x2e0(r28)
/* 80615D94  38 65 00 08 */	addi r3, r5, 8
/* 80615D98  90 7C 02 E0 */	stw r3, 0x2e0(r28)
/* 80615D9C  90 85 00 00 */	stw r4, 0(r5)
/* 80615DA0  90 05 00 04 */	stw r0, 4(r5)
/* 80615DA4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80615DA8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80615DAC  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80615DB0  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80615DB4  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80615DB8  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80615DBC  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 80615DC0  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 80615DC4  E3 61 00 38 */	psq_l f27, 56(r1), 0, 0 /* qr0 */
/* 80615DC8  39 61 00 30 */	addi r11, r1, 0x30
/* 80615DCC  CB 61 00 30 */	lfd f27, 0x30(r1)
/* 80615DD0  4B A8 51 49 */	bl func_8009AF18
/* 80615DD4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80615DD8  7C 08 03 A6 */	mtlr r0
/* 80615DDC  38 21 00 80 */	addi r1, r1, 0x80
/* 80615DE0  4E 80 00 20 */	blr 
