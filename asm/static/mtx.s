.include "macros.inc"

.section .text

.org 0x800832A8

.global PSMTXIdentity
PSMTXIdentity:
/* 800832A8 00080208  C0 02 87 E4 */	lfs f0, @95-_SDA2_BASE_(r2)
/* 800832AC 0008020C  C0 22 87 E0 */	lfs f1, @94-_SDA2_BASE_(r2)
/* 800832B0 00080210  F0 03 00 08 */	psq_st f0, 8(r3), 0, qr0
/* 800832B4 00080214  10 40 0C 60 */	ps_merge01 f2, f0, f1
/* 800832B8 00080218  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 800832BC 0008021C  10 21 04 A0 */	ps_merge10 f1, f1, f0
/* 800832C0 00080220  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 800832C4 00080224  F0 43 00 10 */	psq_st f2, 16(r3), 0, qr0
/* 800832C8 00080228  F0 23 00 00 */	psq_st f1, 0(r3), 0, qr0
/* 800832CC 0008022C  F0 23 00 28 */	psq_st f1, 40(r3), 0, qr0
/* 800832D0 00080230  4E 80 00 20 */	blr 

.global PSMTXCopy
PSMTXCopy:
/* 800832D4 00080234  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 800832D8 00080238  F0 04 00 00 */	psq_st f0, 0(r4), 0, qr0
/* 800832DC 0008023C  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 800832E0 00080240  F0 24 00 08 */	psq_st f1, 8(r4), 0, qr0
/* 800832E4 00080244  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 800832E8 00080248  F0 44 00 10 */	psq_st f2, 16(r4), 0, qr0
/* 800832EC 0008024C  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 800832F0 00080250  F0 64 00 18 */	psq_st f3, 24(r4), 0, qr0
/* 800832F4 00080254  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 800832F8 00080258  F0 84 00 20 */	psq_st f4, 32(r4), 0, qr0
/* 800832FC 0008025C  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 80083300 00080260  F0 A4 00 28 */	psq_st f5, 40(r4), 0, qr0
/* 80083304 00080264  4E 80 00 20 */	blr 

.global PSMTXConcat
PSMTXConcat:
/* 80083308 00080268  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8008330C 0008026C  E0 03 00 00 */	psq_l f0, 0(r3), 0, qr0
/* 80083310 00080270  D9 C1 00 08 */	stfd f14, 8(r1)
/* 80083314 00080274  E0 C4 00 00 */	psq_l f6, 0(r4), 0, qr0
/* 80083318 00080278  3C C0 80 22 */	lis r6, Unit01@ha
/* 8008331C 0008027C  E0 E4 00 08 */	psq_l f7, 8(r4), 0, qr0
/* 80083320 00080280  D9 E1 00 10 */	stfd f15, 0x10(r1)
/* 80083324 00080284  38 C6 81 98 */	addi r6, r6, Unit01@l
/* 80083328 00080288  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 8008332C 0008028C  E1 04 00 10 */	psq_l f8, 16(r4), 0, qr0
/* 80083330 00080290  11 86 00 18 */	ps_muls0 f12, f6, f0
/* 80083334 00080294  E0 43 00 10 */	psq_l f2, 16(r3), 0, qr0
/* 80083338 00080298  11 A7 00 18 */	ps_muls0 f13, f7, f0
/* 8008333C 0008029C  E3 E6 00 00 */	psq_l f31, 0(r6), 0, qr0
/* 80083340 000802A0  11 C6 00 98 */	ps_muls0 f14, f6, f2
/* 80083344 000802A4  E1 24 00 18 */	psq_l f9, 24(r4), 0, qr0
/* 80083348 000802A8  11 E7 00 98 */	ps_muls0 f15, f7, f2
/* 8008334C 000802AC  E0 23 00 08 */	psq_l f1, 8(r3), 0, qr0
/* 80083350 000802B0  11 88 60 1E */	ps_madds1 f12, f8, f0, f12
/* 80083354 000802B4  E0 63 00 18 */	psq_l f3, 24(r3), 0, qr0
/* 80083358 000802B8  11 C8 70 9E */	ps_madds1 f14, f8, f2, f14
/* 8008335C 000802BC  E1 44 00 20 */	psq_l f10, 32(r4), 0, qr0
/* 80083360 000802C0  11 A9 68 1E */	ps_madds1 f13, f9, f0, f13
/* 80083364 000802C4  E1 64 00 28 */	psq_l f11, 40(r4), 0, qr0
/* 80083368 000802C8  11 E9 78 9E */	ps_madds1 f15, f9, f2, f15
/* 8008336C 000802CC  E0 83 00 20 */	psq_l f4, 32(r3), 0, qr0
/* 80083370 000802D0  E0 A3 00 28 */	psq_l f5, 40(r3), 0, qr0
/* 80083374 000802D4  11 8A 60 5C */	ps_madds0 f12, f10, f1, f12
/* 80083378 000802D8  11 AB 68 5C */	ps_madds0 f13, f11, f1, f13
/* 8008337C 000802DC  11 CA 70 DC */	ps_madds0 f14, f10, f3, f14
/* 80083380 000802E0  11 EB 78 DC */	ps_madds0 f15, f11, f3, f15
/* 80083384 000802E4  F1 85 00 00 */	psq_st f12, 0(r5), 0, qr0
/* 80083388 000802E8  10 46 01 18 */	ps_muls0 f2, f6, f4
/* 8008338C 000802EC  11 BF 68 5E */	ps_madds1 f13, f31, f1, f13
/* 80083390 000802F0  10 07 01 18 */	ps_muls0 f0, f7, f4
/* 80083394 000802F4  F1 C5 00 10 */	psq_st f14, 16(r5), 0, qr0
/* 80083398 000802F8  11 FF 78 DE */	ps_madds1 f15, f31, f3, f15
/* 8008339C 000802FC  F1 A5 00 08 */	psq_st f13, 8(r5), 0, qr0
/* 800833A0 00080300  10 48 11 1E */	ps_madds1 f2, f8, f4, f2
/* 800833A4 00080304  10 09 01 1E */	ps_madds1 f0, f9, f4, f0
/* 800833A8 00080308  10 4A 11 5C */	ps_madds0 f2, f10, f5, f2
/* 800833AC 0008030C  C9 C1 00 08 */	lfd f14, 8(r1)
/* 800833B0 00080310  F1 E5 00 18 */	psq_st f15, 24(r5), 0, qr0
/* 800833B4 00080314  10 0B 01 5C */	ps_madds0 f0, f11, f5, f0
/* 800833B8 00080318  F0 45 00 20 */	psq_st f2, 32(r5), 0, qr0
/* 800833BC 0008031C  10 1F 01 5E */	ps_madds1 f0, f31, f5, f0
/* 800833C0 00080320  C9 E1 00 10 */	lfd f15, 0x10(r1)
/* 800833C4 00080324  F0 05 00 28 */	psq_st f0, 40(r5), 0, qr0
/* 800833C8 00080328  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 800833CC 0008032C  38 21 00 40 */	addi r1, r1, 0x40
/* 800833D0 00080330  4E 80 00 20 */	blr 

.global PSMTXInverse
PSMTXInverse:
/* 800833D4 00080334  E0 03 80 00 */	psq_l f0, 0(r3), 1, qr0
/* 800833D8 00080338  E0 23 00 04 */	psq_l f1, 4(r3), 0, qr0
/* 800833DC 0008033C  E0 43 80 10 */	psq_l f2, 16(r3), 1, qr0
/* 800833E0 00080340  10 C1 04 A0 */	ps_merge10 f6, f1, f0
/* 800833E4 00080344  E0 63 00 14 */	psq_l f3, 20(r3), 0, qr0
/* 800833E8 00080348  E0 83 80 20 */	psq_l f4, 32(r3), 1, qr0
/* 800833EC 0008034C  10 E3 14 A0 */	ps_merge10 f7, f3, f2
/* 800833F0 00080350  E0 A3 00 24 */	psq_l f5, 36(r3), 0, qr0
/* 800833F4 00080354  11 63 01 B2 */	ps_mul f11, f3, f6
/* 800833F8 00080358  11 A5 01 F2 */	ps_mul f13, f5, f7
/* 800833FC 0008035C  11 05 24 A0 */	ps_merge10 f8, f5, f4
/* 80083400 00080360  11 61 59 F8 */	ps_msub f11, f1, f7, f11
/* 80083404 00080364  11 81 02 32 */	ps_mul f12, f1, f8
/* 80083408 00080368  11 A3 6A 38 */	ps_msub f13, f3, f8, f13
/* 8008340C 0008036C  11 43 01 32 */	ps_mul f10, f3, f4
/* 80083410 00080370  11 85 61 B8 */	ps_msub f12, f5, f6, f12
/* 80083414 00080374  11 20 01 72 */	ps_mul f9, f0, f5
/* 80083418 00080378  11 01 00 B2 */	ps_mul f8, f1, f2
/* 8008341C 0008037C  10 C6 30 28 */	ps_sub f6, f6, f6
/* 80083420 00080380  11 42 51 78 */	ps_msub f10, f2, f5, f10
/* 80083424 00080384  10 E0 03 72 */	ps_mul f7, f0, f13
/* 80083428 00080388  11 21 49 38 */	ps_msub f9, f1, f4, f9
/* 8008342C 0008038C  10 E2 3B 3A */	ps_madd f7, f2, f12, f7
/* 80083430 00080390  11 00 40 F8 */	ps_msub f8, f0, f3, f8
/* 80083434 00080394  10 E4 3A FA */	ps_madd f7, f4, f11, f7
/* 80083438 00080398  10 07 30 40 */	ps_cmpo0 cr0, f7, f6
/* 8008343C 0008039C  40 82 00 0C */	bne lbl_80083448
/* 80083440 000803A0  38 60 00 00 */	li r3, 0
/* 80083444 000803A4  4E 80 00 20 */	blr 
lbl_80083448:
/* 80083448 000803A8  EC 00 38 30 */	fres f0, f7
/* 8008344C 000803AC  10 C0 00 2A */	ps_add f6, f0, f0
/* 80083450 000803B0  10 A0 00 32 */	ps_mul f5, f0, f0
/* 80083454 000803B4  10 07 31 7C */	ps_nmsub f0, f7, f5, f6
/* 80083458 000803B8  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8008345C 000803BC  11 AD 00 18 */	ps_muls0 f13, f13, f0
/* 80083460 000803C0  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 80083464 000803C4  11 8C 00 18 */	ps_muls0 f12, f12, f0
/* 80083468 000803C8  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 8008346C 000803CC  11 6B 00 18 */	ps_muls0 f11, f11, f0
/* 80083470 000803D0  10 AD 64 20 */	ps_merge00 f5, f13, f12
/* 80083474 000803D4  11 4A 00 18 */	ps_muls0 f10, f10, f0
/* 80083478 000803D8  10 8D 64 E0 */	ps_merge11 f4, f13, f12
/* 8008347C 000803DC  11 29 00 18 */	ps_muls0 f9, f9, f0
/* 80083480 000803E0  F0 A4 00 00 */	psq_st f5, 0(r4), 0, qr0
/* 80083484 000803E4  10 CD 00 72 */	ps_mul f6, f13, f1
/* 80083488 000803E8  F0 84 00 10 */	psq_st f4, 16(r4), 0, qr0
/* 8008348C 000803EC  11 08 00 18 */	ps_muls0 f8, f8, f0
/* 80083490 000803F0  10 CC 30 BA */	ps_madd f6, f12, f2, f6
/* 80083494 000803F4  F1 44 80 20 */	psq_st f10, 32(r4), 1, qr0
/* 80083498 000803F8  10 CB 30 FE */	ps_nmadd f6, f11, f3, f6
/* 8008349C 000803FC  F1 24 80 24 */	psq_st f9, 36(r4), 1, qr0
/* 800834A0 00080400  10 EA 00 72 */	ps_mul f7, f10, f1
/* 800834A4 00080404  10 AB 34 20 */	ps_merge00 f5, f11, f6
/* 800834A8 00080408  F1 04 80 28 */	psq_st f8, 40(r4), 1, qr0
/* 800834AC 0008040C  10 8B 34 E0 */	ps_merge11 f4, f11, f6
/* 800834B0 00080410  F0 A4 00 08 */	psq_st f5, 8(r4), 0, qr0
/* 800834B4 00080414  10 E9 38 BA */	ps_madd f7, f9, f2, f7
/* 800834B8 00080418  F0 84 00 18 */	psq_st f4, 24(r4), 0, qr0
/* 800834BC 0008041C  10 E8 38 FE */	ps_nmadd f7, f8, f3, f7
/* 800834C0 00080420  38 60 00 01 */	li r3, 1
/* 800834C4 00080424  F0 E4 80 2C */	psq_st f7, 44(r4), 1, qr0
/* 800834C8 00080428  4E 80 00 20 */	blr 

.global PSMTXTrans
PSMTXTrans:
/* 800834CC 0008042C  C0 02 87 E4 */	lfs f0, @95-_SDA2_BASE_(r2)
/* 800834D0 00080430  C0 82 87 E0 */	lfs f4, @94-_SDA2_BASE_(r2)
/* 800834D4 00080434  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 800834D8 00080438  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 800834DC 0008043C  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 800834E0 00080440  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 800834E4 00080444  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 800834E8 00080448  D0 83 00 14 */	stfs f4, 0x14(r3)
/* 800834EC 0008044C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 800834F0 00080450  D0 83 00 28 */	stfs f4, 0x28(r3)
/* 800834F4 00080454  D0 63 00 2C */	stfs f3, 0x2c(r3)
/* 800834F8 00080458  D0 83 00 00 */	stfs f4, 0(r3)
/* 800834FC 0008045C  4E 80 00 20 */	blr 

.global PSMTXScale
PSMTXScale:
/* 80083500 00080460  C0 02 87 E4 */	lfs f0, @95-_SDA2_BASE_(r2)
/* 80083504 00080464  D0 23 00 00 */	stfs f1, 0(r3)
/* 80083508 00080468  F0 03 00 04 */	psq_st f0, 4(r3), 0, qr0
/* 8008350C 0008046C  F0 03 00 0C */	psq_st f0, 12(r3), 0, qr0
/* 80083510 00080470  D0 43 00 14 */	stfs f2, 0x14(r3)
/* 80083514 00080474  F0 03 00 18 */	psq_st f0, 24(r3), 0, qr0
/* 80083518 00080478  F0 03 00 20 */	psq_st f0, 32(r3), 0, qr0
/* 8008351C 0008047C  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 80083520 00080480  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80083524 00080484  4E 80 00 20 */	blr 

.global C_MTXLookAt
C_MTXLookAt:
/* 80083528 00080488  7C 08 02 A6 */	mflr r0
/* 8008352C 0008048C  90 01 00 04 */	stw r0, 4(r1)
/* 80083530 00080490  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80083534 00080494  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80083538 00080498  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8008353C 0008049C  93 A1 00 44 */	stw r29, 0x44(r1)
/* 80083540 000804A0  7C 7D 1B 78 */	mr r29, r3
/* 80083544 000804A4  7C 9E 23 78 */	mr r30, r4
/* 80083548 000804A8  7C BF 2B 78 */	mr r31, r5
/* 8008354C 000804AC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80083550 000804B0  38 61 00 30 */	addi r3, r1, 0x30
/* 80083554 000804B4  C0 06 00 00 */	lfs f0, 0(r6)
/* 80083558 000804B8  7C 64 1B 78 */	mr r4, r3
/* 8008355C 000804BC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80083560 000804C0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80083564 000804C4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80083568 000804C8  C0 06 00 04 */	lfs f0, 4(r6)
/* 8008356C 000804CC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80083570 000804D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80083574 000804D4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80083578 000804D8  C0 06 00 08 */	lfs f0, 8(r6)
/* 8008357C 000804DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80083580 000804E0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80083584 000804E4  48 00 02 A5 */	bl PSVECNormalize
/* 80083588 000804E8  7F E3 FB 78 */	mr r3, r31
/* 8008358C 000804EC  38 81 00 30 */	addi r4, r1, 0x30
/* 80083590 000804F0  38 A1 00 24 */	addi r5, r1, 0x24
/* 80083594 000804F4  48 00 02 D9 */	bl PSVECCrossProduct
/* 80083598 000804F8  38 61 00 24 */	addi r3, r1, 0x24
/* 8008359C 000804FC  7C 64 1B 78 */	mr r4, r3
/* 800835A0 00080500  48 00 02 89 */	bl PSVECNormalize
/* 800835A4 00080504  38 61 00 30 */	addi r3, r1, 0x30
/* 800835A8 00080508  38 81 00 24 */	addi r4, r1, 0x24
/* 800835AC 0008050C  38 A1 00 18 */	addi r5, r1, 0x18
/* 800835B0 00080510  48 00 02 BD */	bl PSVECCrossProduct
/* 800835B4 00080514  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800835B8 00080518  D0 1D 00 00 */	stfs f0, 0(r29)
/* 800835BC 0008051C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800835C0 00080520  D0 1D 00 04 */	stfs f0, 4(r29)
/* 800835C4 00080524  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800835C8 00080528  D0 1D 00 08 */	stfs f0, 8(r29)
/* 800835CC 0008052C  C0 7E 00 00 */	lfs f3, 0(r30)
/* 800835D0 00080530  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 800835D4 00080534  C0 3E 00 04 */	lfs f1, 4(r30)
/* 800835D8 00080538  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800835DC 0008053C  EC 43 00 B2 */	fmuls f2, f3, f2
/* 800835E0 00080540  C0 7E 00 08 */	lfs f3, 8(r30)
/* 800835E4 00080544  EC 01 00 32 */	fmuls f0, f1, f0
/* 800835E8 00080548  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 800835EC 0008054C  EC 23 00 72 */	fmuls f1, f3, f1
/* 800835F0 00080550  EC 02 00 2A */	fadds f0, f2, f0
/* 800835F4 00080554  EC 01 00 2A */	fadds f0, f1, f0
/* 800835F8 00080558  FC 00 00 50 */	fneg f0, f0
/* 800835FC 0008055C  D0 1D 00 0C */	stfs f0, 0xc(r29)
/* 80083600 00080560  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80083604 00080564  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 80083608 00080568  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8008360C 0008056C  D0 1D 00 14 */	stfs f0, 0x14(r29)
/* 80083610 00080570  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80083614 00080574  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 80083618 00080578  C0 7E 00 00 */	lfs f3, 0(r30)
/* 8008361C 0008057C  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80083620 00080580  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80083624 00080584  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80083628 00080588  EC 43 00 B2 */	fmuls f2, f3, f2
/* 8008362C 0008058C  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80083630 00080590  EC 01 00 32 */	fmuls f0, f1, f0
/* 80083634 00080594  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80083638 00080598  EC 23 00 72 */	fmuls f1, f3, f1
/* 8008363C 0008059C  EC 02 00 2A */	fadds f0, f2, f0
/* 80083640 000805A0  EC 01 00 2A */	fadds f0, f1, f0
/* 80083644 000805A4  FC 00 00 50 */	fneg f0, f0
/* 80083648 000805A8  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 8008364C 000805AC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80083650 000805B0  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 80083654 000805B4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80083658 000805B8  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 8008365C 000805BC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80083660 000805C0  D0 1D 00 28 */	stfs f0, 0x28(r29)
/* 80083664 000805C4  C0 7E 00 00 */	lfs f3, 0(r30)
/* 80083668 000805C8  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 8008366C 000805CC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80083670 000805D0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80083674 000805D4  EC 43 00 B2 */	fmuls f2, f3, f2
/* 80083678 000805D8  C0 7E 00 08 */	lfs f3, 8(r30)
/* 8008367C 000805DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80083680 000805E0  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80083684 000805E4  EC 23 00 72 */	fmuls f1, f3, f1
/* 80083688 000805E8  EC 02 00 2A */	fadds f0, f2, f0
/* 8008368C 000805EC  EC 01 00 2A */	fadds f0, f1, f0
/* 80083690 000805F0  FC 00 00 50 */	fneg f0, f0
/* 80083694 000805F4  D0 1D 00 2C */	stfs f0, 0x2c(r29)
/* 80083698 000805F8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8008369C 000805FC  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 800836A0 00080600  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 800836A4 00080604  7C 08 03 A6 */	mtlr r0
/* 800836A8 00080608  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 800836AC 0008060C  38 21 00 50 */	addi r1, r1, 0x50
/* 800836B0 00080610  4E 80 00 20 */	blr 

.global C_MTXLightOrtho
C_MTXLightOrtho:
/* 800836B4 00080614  ED 44 18 28 */	fsubs f10, f4, f3
/* 800836B8 00080618  C1 62 87 E0 */	lfs f11, @94-_SDA2_BASE_(r2)
/* 800836BC 0008061C  EC 01 10 28 */	fsubs f0, f1, f2
/* 800836C0 00080620  C1 22 87 E8 */	lfs f9, @193-_SDA2_BASE_(r2)
/* 800836C4 00080624  EC 64 18 2A */	fadds f3, f4, f3
/* 800836C8 00080628  ED 8B 50 24 */	fdivs f12, f11, f10
/* 800836CC 0008062C  ED 4B 00 24 */	fdivs f10, f11, f0
/* 800836D0 00080630  EC 89 03 32 */	fmuls f4, f9, f12
/* 800836D4 00080634  FC 60 18 50 */	fneg f3, f3
/* 800836D8 00080638  EC 01 10 2A */	fadds f0, f1, f2
/* 800836DC 0008063C  EC 24 01 72 */	fmuls f1, f4, f5
/* 800836E0 00080640  EC 4C 00 F2 */	fmuls f2, f12, f3
/* 800836E4 00080644  FC 00 00 50 */	fneg f0, f0
/* 800836E8 00080648  D0 23 00 00 */	stfs f1, 0(r3)
/* 800836EC 0008064C  EC 29 02 B2 */	fmuls f1, f9, f10
/* 800836F0 00080650  EC 45 00 B2 */	fmuls f2, f5, f2
/* 800836F4 00080654  C0 62 87 E4 */	lfs f3, @95-_SDA2_BASE_(r2)
/* 800836F8 00080658  EC 0A 00 32 */	fmuls f0, f10, f0
/* 800836FC 0008065C  D0 63 00 04 */	stfs f3, 4(r3)
/* 80083700 00080660  EC 47 10 2A */	fadds f2, f7, f2
/* 80083704 00080664  EC 21 01 B2 */	fmuls f1, f1, f6
/* 80083708 00080668  D0 63 00 08 */	stfs f3, 8(r3)
/* 8008370C 0008066C  EC 06 00 32 */	fmuls f0, f6, f0
/* 80083710 00080670  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 80083714 00080674  D0 63 00 10 */	stfs f3, 0x10(r3)
/* 80083718 00080678  EC 08 00 2A */	fadds f0, f8, f0
/* 8008371C 0008067C  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 80083720 00080680  D0 63 00 18 */	stfs f3, 0x18(r3)
/* 80083724 00080684  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80083728 00080688  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 8008372C 0008068C  D0 63 00 24 */	stfs f3, 0x24(r3)
/* 80083730 00080690  D0 63 00 28 */	stfs f3, 0x28(r3)
/* 80083734 00080694  D1 63 00 2C */	stfs f11, 0x2c(r3)
/* 80083738 00080698  4E 80 00 20 */	blr 

.global PSMTXMultVec
PSMTXMultVec:
/* 8008373C 0008069C  E0 04 00 00 */	psq_l f0, 0(r4), 0, qr0
/* 80083740 000806A0  E0 43 00 00 */	psq_l f2, 0(r3), 0, qr0
/* 80083744 000806A4  E0 24 80 08 */	psq_l f1, 8(r4), 1, qr0
/* 80083748 000806A8  10 82 00 32 */	ps_mul f4, f2, f0
/* 8008374C 000806AC  E0 63 00 08 */	psq_l f3, 8(r3), 0, qr0
/* 80083750 000806B0  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 80083754 000806B4  E1 03 00 10 */	psq_l f8, 16(r3), 0, qr0
/* 80083758 000806B8  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 8008375C 000806BC  E1 23 00 18 */	psq_l f9, 24(r3), 0, qr0
/* 80083760 000806C0  11 48 00 32 */	ps_mul f10, f8, f0
/* 80083764 000806C4  F0 C5 80 00 */	psq_st f6, 0(r5), 1, qr0
/* 80083768 000806C8  11 69 50 7A */	ps_madd f11, f9, f1, f10
/* 8008376C 000806CC  E0 43 00 20 */	psq_l f2, 32(r3), 0, qr0
/* 80083770 000806D0  11 8B 5B 14 */	ps_sum0 f12, f11, f12, f11
/* 80083774 000806D4  E0 63 00 28 */	psq_l f3, 40(r3), 0, qr0
/* 80083778 000806D8  10 82 00 32 */	ps_mul f4, f2, f0
/* 8008377C 000806DC  F1 85 80 04 */	psq_st f12, 4(r5), 1, qr0
/* 80083780 000806E0  10 A3 20 7A */	ps_madd f5, f3, f1, f4
/* 80083784 000806E4  10 C5 29 94 */	ps_sum0 f6, f5, f6, f5
/* 80083788 000806E8  F0 C5 80 08 */	psq_st f6, 8(r5), 1, qr0
/* 8008378C 000806EC  4E 80 00 20 */	blr 
