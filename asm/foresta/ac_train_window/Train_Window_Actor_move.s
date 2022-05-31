lbl_804AC740:
/* 804AC740  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AC744  7C 08 02 A6 */	mflr r0
/* 804AC748  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AC74C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804AC750  7C 7F 1B 78 */	mr r31, r3
/* 804AC754  80 63 01 9C */	lwz r3, 0x19c(r3)
/* 804AC758  38 03 00 05 */	addi r0, r3, 5
/* 804AC75C  90 1F 01 9C */	stw r0, 0x19c(r31)
/* 804AC760  4B FF FE 3D */	bl aTW_GetNowAlpha
/* 804AC764  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 804AC768  3C 00 43 30 */	lis r0, 0x4330
/* 804AC76C  3C 60 80 64 */	lis r3, lit_506@ha /* 0x80645EFC@ha */
/* 804AC770  90 81 00 0C */	stw r4, 0xc(r1)
/* 804AC774  38 A3 5E FC */	addi r5, r3, lit_506@l /* 0x80645EFC@l */
/* 804AC778  3C 80 80 64 */	lis r4, lit_500@ha /* 0x80645EE4@ha */
/* 804AC77C  90 01 00 08 */	stw r0, 8(r1)
/* 804AC780  3C 60 80 64 */	lis r3, lit_459@ha /* 0x80645EC0@ha */
/* 804AC784  C8 25 00 00 */	lfd f1, 0(r5)
/* 804AC788  38 A4 5E E4 */	addi r5, r4, lit_500@l /* 0x80645EE4@l */
/* 804AC78C  38 83 5E C0 */	addi r4, r3, lit_459@l /* 0x80645EC0@l */
/* 804AC790  C8 01 00 08 */	lfd f0, 8(r1)
/* 804AC794  C0 5F 01 A8 */	lfs f2, 0x1a8(r31)
/* 804AC798  38 7F 01 A4 */	addi r3, r31, 0x1a4
/* 804AC79C  EC 20 08 28 */	fsubs f1, f0, f1
/* 804AC7A0  C0 65 00 00 */	lfs f3, 0(r5)
/* 804AC7A4  C0 84 00 00 */	lfs f4, 0(r4)
/* 804AC7A8  4B F0 EA 09 */	bl add_calc
/* 804AC7AC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804AC7B0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804AC7B4  3C 63 00 02 */	addis r3, r3, 2
/* 804AC7B8  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804AC7BC  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804AC7C0  41 80 00 14 */	blt lbl_804AC7D4
/* 804AC7C4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011940@ha */
/* 804AC7C8  38 03 19 40 */	addi r0, r3, 0x1940 /* 0x00011940@l */
/* 804AC7CC  7C 04 00 00 */	cmpw r4, r0
/* 804AC7D0  41 80 00 10 */	blt lbl_804AC7E0
lbl_804AC7D4:
/* 804AC7D4  3C 60 80 64 */	lis r3, lit_501@ha /* 0x80645EE8@ha */
/* 804AC7D8  C0 23 5E E8 */	lfs f1, lit_501@l(r3)  /* 0x80645EE8@l */
/* 804AC7DC  48 00 00 A0 */	b lbl_804AC87C
lbl_804AC7E0:
/* 804AC7E0  38 03 A8 C0 */	addi r0, r3, -22336
/* 804AC7E4  7C 04 00 00 */	cmpw r4, r0
/* 804AC7E8  41 80 00 58 */	blt lbl_804AC840
/* 804AC7EC  3C 64 FF FF */	addis r3, r4, 0xffff
/* 804AC7F0  3C 00 43 30 */	lis r0, 0x4330
/* 804AC7F4  38 63 57 40 */	addi r3, r3, 0x5740
/* 804AC7F8  3C A0 80 64 */	lis r5, lit_484@ha /* 0x80645EDC@ha */
/* 804AC7FC  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 804AC800  90 01 00 08 */	stw r0, 8(r1)
/* 804AC804  3C 60 80 64 */	lis r3, lit_480@ha /* 0x80645ECC@ha */
/* 804AC808  90 81 00 0C */	stw r4, 0xc(r1)
/* 804AC80C  38 85 5E DC */	addi r4, r5, lit_484@l /* 0x80645EDC@l */
/* 804AC810  C8 44 00 00 */	lfd f2, 0(r4)
/* 804AC814  3C 80 80 64 */	lis r4, lit_502@ha /* 0x80645EEC@ha */
/* 804AC818  C8 21 00 08 */	lfd f1, 8(r1)
/* 804AC81C  3C A0 80 64 */	lis r5, lit_503@ha /* 0x80645EF0@ha */
/* 804AC820  C0 03 5E CC */	lfs f0, lit_480@l(r3)  /* 0x80645ECC@l */
/* 804AC824  EC 21 10 28 */	fsubs f1, f1, f2
/* 804AC828  C0 45 5E F0 */	lfs f2, lit_503@l(r5)  /* 0x80645EF0@l */
/* 804AC82C  C0 64 5E EC */	lfs f3, lit_502@l(r4)  /* 0x80645EEC@l */
/* 804AC830  EC 01 00 24 */	fdivs f0, f1, f0
/* 804AC834  EC 02 00 32 */	fmuls f0, f2, f0
/* 804AC838  EC 23 00 2A */	fadds f1, f3, f0
/* 804AC83C  48 00 00 40 */	b lbl_804AC87C
lbl_804AC840:
/* 804AC840  38 64 C7 C0 */	addi r3, r4, -14400
/* 804AC844  3C 00 43 30 */	lis r0, 0x4330
/* 804AC848  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804AC84C  3C 80 80 64 */	lis r4, lit_484@ha /* 0x80645EDC@ha */
/* 804AC850  90 61 00 0C */	stw r3, 0xc(r1)
/* 804AC854  3C 60 80 64 */	lis r3, lit_480@ha /* 0x80645ECC@ha */
/* 804AC858  C8 44 5E DC */	lfd f2, lit_484@l(r4)  /* 0x80645EDC@l */
/* 804AC85C  3C A0 80 64 */	lis r5, lit_502@ha /* 0x80645EEC@ha */
/* 804AC860  90 01 00 08 */	stw r0, 8(r1)
/* 804AC864  C0 03 5E CC */	lfs f0, lit_480@l(r3)  /* 0x80645ECC@l */
/* 804AC868  C8 21 00 08 */	lfd f1, 8(r1)
/* 804AC86C  EC 21 10 28 */	fsubs f1, f1, f2
/* 804AC870  C0 45 5E EC */	lfs f2, lit_502@l(r5)  /* 0x80645EEC@l */
/* 804AC874  EC 01 00 24 */	fdivs f0, f1, f0
/* 804AC878  EC 22 00 32 */	fmuls f1, f2, f0
lbl_804AC87C:
/* 804AC87C  3C A0 80 64 */	lis r5, lit_504@ha /* 0x80645EF4@ha */
/* 804AC880  3C 80 80 64 */	lis r4, lit_500@ha /* 0x80645EE4@ha */
/* 804AC884  3C 60 80 64 */	lis r3, lit_459@ha /* 0x80645EC0@ha */
/* 804AC888  C0 45 5E F4 */	lfs f2, lit_504@l(r5)  /* 0x80645EF4@l */
/* 804AC88C  C0 83 5E C0 */	lfs f4, lit_459@l(r3)  /* 0x80645EC0@l */
/* 804AC890  38 7F 01 B4 */	addi r3, r31, 0x1b4
/* 804AC894  C0 64 5E E4 */	lfs f3, lit_500@l(r4)  /* 0x80645EE4@l */
/* 804AC898  4B F0 E9 19 */	bl add_calc
/* 804AC89C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AC8A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804AC8A4  7C 08 03 A6 */	mtlr r0
/* 804AC8A8  38 21 00 20 */	addi r1, r1, 0x20
/* 804AC8AC  4E 80 00 20 */	blr 
