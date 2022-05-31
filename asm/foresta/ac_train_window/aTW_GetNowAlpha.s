lbl_804AC59C:
/* 804AC59C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804AC5A0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804AC5A4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804AC5A8  3C 63 00 02 */	addis r3, r3, 2
/* 804AC5AC  80 83 61 1C */	lwz r4, 0x611c(r3)
/* 804AC5B0  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804AC5B4  41 80 00 CC */	blt lbl_804AC680
/* 804AC5B8  3C 60 00 01 */	lis r3, 0x0001 /* 0x00011940@ha */
/* 804AC5BC  38 03 19 40 */	addi r0, r3, 0x1940 /* 0x00011940@l */
/* 804AC5C0  7C 04 00 00 */	cmpw r4, r0
/* 804AC5C4  40 80 00 BC */	bge lbl_804AC680
/* 804AC5C8  38 03 A8 C0 */	addi r0, r3, -22336
/* 804AC5CC  7C 04 00 00 */	cmpw r4, r0
/* 804AC5D0  40 80 00 50 */	bge lbl_804AC620
/* 804AC5D4  38 64 C7 C0 */	addi r3, r4, -14400
/* 804AC5D8  3C 00 43 30 */	lis r0, 0x4330
/* 804AC5DC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804AC5E0  3C 80 80 64 */	lis r4, lit_484@ha /* 0x80645EDC@ha */
/* 804AC5E4  90 61 00 0C */	stw r3, 0xc(r1)
/* 804AC5E8  3C 60 80 64 */	lis r3, lit_480@ha /* 0x80645ECC@ha */
/* 804AC5EC  C8 44 5E DC */	lfd f2, lit_484@l(r4)  /* 0x80645EDC@l */
/* 804AC5F0  3C A0 80 64 */	lis r5, lit_479@ha /* 0x80645EC8@ha */
/* 804AC5F4  90 01 00 08 */	stw r0, 8(r1)
/* 804AC5F8  C0 03 5E CC */	lfs f0, lit_480@l(r3)  /* 0x80645ECC@l */
/* 804AC5FC  C8 21 00 08 */	lfd f1, 8(r1)
/* 804AC600  EC 21 10 28 */	fsubs f1, f1, f2
/* 804AC604  C0 45 5E C8 */	lfs f2, lit_479@l(r5)  /* 0x80645EC8@l */
/* 804AC608  EC 01 00 24 */	fdivs f0, f1, f0
/* 804AC60C  EC 02 00 32 */	fmuls f0, f2, f0
/* 804AC610  FC 00 00 1E */	fctiwz f0, f0
/* 804AC614  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804AC618  80 61 00 14 */	lwz r3, 0x14(r1)
/* 804AC61C  48 00 01 1C */	b lbl_804AC738
lbl_804AC620:
/* 804AC620  3C 64 FF FF */	addis r3, r4, 0xffff
/* 804AC624  3C 00 43 30 */	lis r0, 0x4330
/* 804AC628  38 63 57 40 */	addi r3, r3, 0x5740
/* 804AC62C  3C A0 80 64 */	lis r5, lit_484@ha /* 0x80645EDC@ha */
/* 804AC630  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 804AC634  90 01 00 18 */	stw r0, 0x18(r1)
/* 804AC638  3C 60 80 64 */	lis r3, lit_480@ha /* 0x80645ECC@ha */
/* 804AC63C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804AC640  38 85 5E DC */	addi r4, r5, lit_484@l /* 0x80645EDC@l */
/* 804AC644  C8 44 00 00 */	lfd f2, 0(r4)
/* 804AC648  3C 80 80 64 */	lis r4, lit_479@ha /* 0x80645EC8@ha */
/* 804AC64C  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 804AC650  3C A0 80 64 */	lis r5, lit_459@ha /* 0x80645EC0@ha */
/* 804AC654  C0 03 5E CC */	lfs f0, lit_480@l(r3)  /* 0x80645ECC@l */
/* 804AC658  EC 21 10 28 */	fsubs f1, f1, f2
/* 804AC65C  C0 45 5E C0 */	lfs f2, lit_459@l(r5)  /* 0x80645EC0@l */
/* 804AC660  C0 64 5E C8 */	lfs f3, lit_479@l(r4)  /* 0x80645EC8@l */
/* 804AC664  EC 01 00 24 */	fdivs f0, f1, f0
/* 804AC668  EC 02 00 28 */	fsubs f0, f2, f0
/* 804AC66C  EC 03 00 32 */	fmuls f0, f3, f0
/* 804AC670  FC 00 00 1E */	fctiwz f0, f0
/* 804AC674  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804AC678  80 61 00 24 */	lwz r3, 0x24(r1)
/* 804AC67C  48 00 00 BC */	b lbl_804AC738
lbl_804AC680:
/* 804AC680  2C 04 38 40 */	cmpwi r4, 0x3840
/* 804AC684  40 80 00 64 */	bge lbl_804AC6E8
/* 804AC688  6C 83 80 00 */	xoris r3, r4, 0x8000
/* 804AC68C  3C 00 43 30 */	lis r0, 0x4330
/* 804AC690  90 61 00 24 */	stw r3, 0x24(r1)
/* 804AC694  3C 80 80 64 */	lis r4, lit_484@ha /* 0x80645EDC@ha */
/* 804AC698  C8 44 5E DC */	lfd f2, lit_484@l(r4)  /* 0x80645EDC@l */
/* 804AC69C  3C 60 80 64 */	lis r3, lit_480@ha /* 0x80645ECC@ha */
/* 804AC6A0  90 01 00 20 */	stw r0, 0x20(r1)
/* 804AC6A4  3C 80 80 64 */	lis r4, lit_482@ha /* 0x80645ED4@ha */
/* 804AC6A8  C0 03 5E CC */	lfs f0, lit_480@l(r3)  /* 0x80645ECC@l */
/* 804AC6AC  3C 60 80 64 */	lis r3, lit_459@ha /* 0x80645EC0@ha */
/* 804AC6B0  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 804AC6B4  3C A0 80 64 */	lis r5, lit_481@ha /* 0x80645ED0@ha */
/* 804AC6B8  C0 63 5E C0 */	lfs f3, lit_459@l(r3)  /* 0x80645EC0@l */
/* 804AC6BC  EC 21 10 28 */	fsubs f1, f1, f2
/* 804AC6C0  C0 44 5E D4 */	lfs f2, lit_482@l(r4)  /* 0x80645ED4@l */
/* 804AC6C4  EC 01 00 24 */	fdivs f0, f1, f0
/* 804AC6C8  C0 25 5E D0 */	lfs f1, lit_481@l(r5)  /* 0x80645ED0@l */
/* 804AC6CC  EC 02 00 2A */	fadds f0, f2, f0
/* 804AC6D0  EC 03 00 28 */	fsubs f0, f3, f0
/* 804AC6D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 804AC6D8  FC 00 00 1E */	fctiwz f0, f0
/* 804AC6DC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804AC6E0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 804AC6E4  48 00 00 54 */	b lbl_804AC738
lbl_804AC6E8:
/* 804AC6E8  3C 64 FF FF */	addis r3, r4, 0xffff
/* 804AC6EC  3C 00 43 30 */	lis r0, 0x4330
/* 804AC6F0  38 63 E6 C0 */	addi r3, r3, -6464
/* 804AC6F4  3C A0 80 64 */	lis r5, lit_484@ha /* 0x80645EDC@ha */
/* 804AC6F8  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 804AC6FC  90 01 00 20 */	stw r0, 0x20(r1)
/* 804AC700  3C 60 80 64 */	lis r3, lit_480@ha /* 0x80645ECC@ha */
/* 804AC704  90 81 00 24 */	stw r4, 0x24(r1)
/* 804AC708  38 85 5E DC */	addi r4, r5, lit_484@l /* 0x80645EDC@l */
/* 804AC70C  C8 44 00 00 */	lfd f2, 0(r4)
/* 804AC710  3C A0 80 64 */	lis r5, lit_481@ha /* 0x80645ED0@ha */
/* 804AC714  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 804AC718  C0 03 5E CC */	lfs f0, lit_480@l(r3)  /* 0x80645ECC@l */
/* 804AC71C  EC 21 10 28 */	fsubs f1, f1, f2
/* 804AC720  C0 45 5E D0 */	lfs f2, lit_481@l(r5)  /* 0x80645ED0@l */
/* 804AC724  EC 01 00 24 */	fdivs f0, f1, f0
/* 804AC728  EC 02 00 32 */	fmuls f0, f2, f0
/* 804AC72C  FC 00 00 1E */	fctiwz f0, f0
/* 804AC730  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804AC734  80 61 00 1C */	lwz r3, 0x1c(r1)
lbl_804AC738:
/* 804AC738  38 21 00 30 */	addi r1, r1, 0x30
/* 804AC73C  4E 80 00 20 */	blr 
