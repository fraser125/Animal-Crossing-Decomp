lbl_80431004:
/* 80431004  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80431008  7C 08 02 A6 */	mflr r0
/* 8043100C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80431010  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80431014  7C BF 2B 78 */	mr r31, r5
/* 80431018  93 C1 00 48 */	stw r30, 0x48(r1)
/* 8043101C  7C 7E 1B 78 */	mr r30, r3
/* 80431020  7C 83 23 78 */	mr r3, r4
/* 80431024  4B FA 86 1D */	bl get_player_actor_withoutCheck
/* 80431028  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 8043102C  3C 80 80 64 */	lis r4, lit_5574@ha /* 0x80644414@ha */
/* 80431030  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80431034  C0 04 44 14 */	lfs f0, lit_5574@l(r4)  /* 0x80644414@l */
/* 80431038  90 A1 00 30 */	stw r5, 0x30(r1)
/* 8043103C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80431040  80 03 00 30 */	lwz r0, 0x30(r3)
/* 80431044  90 01 00 38 */	stw r0, 0x38(r1)
/* 80431048  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8043104C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80431050  40 80 00 0C */	bge lbl_8043105C
/* 80431054  38 00 00 04 */	li r0, 4
/* 80431058  48 00 00 6C */	b lbl_804310C4
lbl_8043105C:
/* 8043105C  40 81 00 2C */	ble lbl_80431088
/* 80431060  3C 60 80 64 */	lis r3, lit_10417@ha /* 0x80644578@ha */
/* 80431064  C0 03 45 78 */	lfs f0, lit_10417@l(r3)  /* 0x80644578@l */
/* 80431068  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8043106C  40 80 00 1C */	bge lbl_80431088
/* 80431070  2C 1F 00 00 */	cmpwi r31, 0
/* 80431074  40 82 00 0C */	bne lbl_80431080
/* 80431078  38 00 00 00 */	li r0, 0
/* 8043107C  48 00 00 48 */	b lbl_804310C4
lbl_80431080:
/* 80431080  38 00 00 01 */	li r0, 1
/* 80431084  48 00 00 40 */	b lbl_804310C4
lbl_80431088:
/* 80431088  3C 60 80 64 */	lis r3, lit_10417@ha /* 0x80644578@ha */
/* 8043108C  C0 03 45 78 */	lfs f0, lit_10417@l(r3)  /* 0x80644578@l */
/* 80431090  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80431094  40 81 02 9C */	ble lbl_80431330
/* 80431098  3C 60 80 64 */	lis r3, lit_10418@ha /* 0x8064457C@ha */
/* 8043109C  C0 03 45 7C */	lfs f0, lit_10418@l(r3)  /* 0x8064457C@l */
/* 804310A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804310A4  40 80 02 8C */	bge lbl_80431330
/* 804310A8  2C 1F 00 00 */	cmpwi r31, 0
/* 804310AC  40 82 00 0C */	bne lbl_804310B8
/* 804310B0  38 00 00 02 */	li r0, 2
/* 804310B4  48 00 00 10 */	b lbl_804310C4
lbl_804310B8:
/* 804310B8  38 00 00 03 */	li r0, 3
/* 804310BC  48 00 00 08 */	b lbl_804310C4
/* 804310C0  48 00 02 70 */	b lbl_80431330
lbl_804310C4:
/* 804310C4  2C 00 00 04 */	cmpwi r0, 4
/* 804310C8  40 80 00 60 */	bge lbl_80431128
/* 804310CC  1C C0 00 0C */	mulli r6, r0, 0xc
/* 804310D0  3C 60 80 64 */	lis r3, lit_530@ha /* 0x80644274@ha */
/* 804310D4  3C A0 80 68 */	lis r5, suisou_pos@ha /* 0x80684E7C@ha */
/* 804310D8  80 81 00 30 */	lwz r4, 0x30(r1)
/* 804310DC  38 E3 42 74 */	addi r7, r3, lit_530@l /* 0x80644274@l */
/* 804310E0  80 61 00 34 */	lwz r3, 0x34(r1)
/* 804310E4  C0 27 00 00 */	lfs f1, 0(r7)
/* 804310E8  38 05 4E 7C */	addi r0, r5, suisou_pos@l /* 0x80684E7C@l */
/* 804310EC  7C A0 32 14 */	add r5, r0, r6
/* 804310F0  80 01 00 38 */	lwz r0, 0x38(r1)
/* 804310F4  80 E5 00 00 */	lwz r7, 0(r5)
/* 804310F8  FC 60 08 90 */	fmr f3, f1
/* 804310FC  80 C5 00 04 */	lwz r6, 4(r5)
/* 80431100  FC 80 08 90 */	fmr f4, f1
/* 80431104  80 A5 00 08 */	lwz r5, 8(r5)
/* 80431108  FC A0 08 90 */	fmr f5, f1
/* 8043110C  90 E1 00 0C */	stw r7, 0xc(r1)
/* 80431110  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80431114  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80431118  90 81 00 18 */	stw r4, 0x18(r1)
/* 8043111C  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80431120  90 01 00 20 */	stw r0, 0x20(r1)
/* 80431124  48 00 00 88 */	b lbl_804311AC
lbl_80431128:
/* 80431128  1C C0 00 0C */	mulli r6, r0, 0xc
/* 8043112C  3C 60 80 64 */	lis r3, lit_10419@ha /* 0x80644580@ha */
/* 80431130  3C A0 80 68 */	lis r5, suisou_pos@ha /* 0x80684E7C@ha */
/* 80431134  80 81 00 30 */	lwz r4, 0x30(r1)
/* 80431138  38 E3 45 80 */	addi r7, r3, lit_10419@l /* 0x80644580@l */
/* 8043113C  80 61 00 34 */	lwz r3, 0x34(r1)
/* 80431140  38 05 4E 7C */	addi r0, r5, suisou_pos@l /* 0x80684E7C@l */
/* 80431144  C0 27 00 00 */	lfs f1, 0(r7)
/* 80431148  7C A0 32 14 */	add r5, r0, r6
/* 8043114C  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80431150  80 E5 00 00 */	lwz r7, 0(r5)
/* 80431154  3D 20 80 64 */	lis r9, lit_4774@ha /* 0x806443F8@ha */
/* 80431158  80 C5 00 04 */	lwz r6, 4(r5)
/* 8043115C  3D 00 80 64 */	lis r8, lit_698@ha /* 0x806442B4@ha */
/* 80431160  80 A5 00 08 */	lwz r5, 8(r5)
/* 80431164  FC 60 08 90 */	fmr f3, f1
/* 80431168  2C 1F 00 00 */	cmpwi r31, 0
/* 8043116C  90 E1 00 0C */	stw r7, 0xc(r1)
/* 80431170  C0 89 43 F8 */	lfs f4, lit_4774@l(r9)  /* 0x806443F8@l */
/* 80431174  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80431178  C0 A8 42 B4 */	lfs f5, lit_698@l(r8)  /* 0x806442B4@l */
/* 8043117C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80431180  90 81 00 18 */	stw r4, 0x18(r1)
/* 80431184  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80431188  90 01 00 20 */	stw r0, 0x20(r1)
/* 8043118C  40 82 00 14 */	bne lbl_804311A0
/* 80431190  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80431194  EC 00 28 28 */	fsubs f0, f0, f5
/* 80431198  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8043119C  48 00 00 10 */	b lbl_804311AC
lbl_804311A0:
/* 804311A0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804311A4  EC 00 28 2A */	fadds f0, f0, f5
/* 804311A8  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_804311AC:
/* 804311AC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804311B0  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 804311B4  EC 20 08 2A */	fadds f1, f0, f1
/* 804311B8  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 804311BC  40 81 00 0C */	ble lbl_804311C8
/* 804311C0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804311C4  48 00 00 14 */	b lbl_804311D8
lbl_804311C8:
/* 804311C8  EC 00 18 28 */	fsubs f0, f0, f3
/* 804311CC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804311D0  40 80 00 08 */	bge lbl_804311D8
/* 804311D4  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_804311D8:
/* 804311D8  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 804311DC  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 804311E0  EC 01 20 2A */	fadds f0, f1, f4
/* 804311E4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804311E8  40 81 00 0C */	ble lbl_804311F4
/* 804311EC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804311F0  48 00 00 14 */	b lbl_80431204
lbl_804311F4:
/* 804311F4  EC 01 28 28 */	fsubs f0, f1, f5
/* 804311F8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804311FC  40 80 00 08 */	bge lbl_80431204
/* 80431200  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_80431204:
/* 80431204  1C BF 00 0C */	mulli r5, r31, 0xc
/* 80431208  3C FE 00 01 */	addis r7, r30, 1
/* 8043120C  80 C1 00 18 */	lwz r6, 0x18(r1)
/* 80431210  38 61 00 18 */	addi r3, r1, 0x18
/* 80431214  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80431218  38 81 00 30 */	addi r4, r1, 0x30
/* 8043121C  7C E7 2A 14 */	add r7, r7, r5
/* 80431220  38 A1 00 24 */	addi r5, r1, 0x24
/* 80431224  90 C7 4D 08 */	stw r6, 0x4d08(r7)
/* 80431228  90 07 4D 0C */	stw r0, 0x4d0c(r7)
/* 8043122C  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80431230  90 07 4D 10 */	stw r0, 0x4d10(r7)
/* 80431234  4B F8 9D 45 */	bl xyz_t_sub
/* 80431238  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8043123C  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 80431240  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80431244  EC 40 00 32 */	fmuls f2, f0, f0
/* 80431248  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 8043124C  EC 21 00 72 */	fmuls f1, f1, f1
/* 80431250  EC 82 08 2A */	fadds f4, f2, f1
/* 80431254  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80431258  40 81 00 68 */	ble lbl_804312C0
/* 8043125C  FC 20 20 34 */	frsqrte f1, f4
/* 80431260  3C 60 80 64 */	lis r3, lit_469@ha /* 0x8064424C@ha */
/* 80431264  38 83 42 4C */	addi r4, r3, lit_469@l /* 0x8064424C@l */
/* 80431268  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8043126C  C8 64 00 00 */	lfd f3, 0(r4)
/* 80431270  FC 01 00 72 */	fmul f0, f1, f1
/* 80431274  C8 43 42 54 */	lfd f2, lit_470@l(r3)  /* 0x80644254@l */
/* 80431278  FC 23 00 72 */	fmul f1, f3, f1
/* 8043127C  FC 04 00 32 */	fmul f0, f4, f0
/* 80431280  FC 02 00 28 */	fsub f0, f2, f0
/* 80431284  FC 21 00 32 */	fmul f1, f1, f0
/* 80431288  FC 01 00 72 */	fmul f0, f1, f1
/* 8043128C  FC 23 00 72 */	fmul f1, f3, f1
/* 80431290  FC 04 00 32 */	fmul f0, f4, f0
/* 80431294  FC 02 00 28 */	fsub f0, f2, f0
/* 80431298  FC 21 00 32 */	fmul f1, f1, f0
/* 8043129C  FC 01 00 72 */	fmul f0, f1, f1
/* 804312A0  FC 23 00 72 */	fmul f1, f3, f1
/* 804312A4  FC 04 00 32 */	fmul f0, f4, f0
/* 804312A8  FC 02 00 28 */	fsub f0, f2, f0
/* 804312AC  FC 01 00 32 */	fmul f0, f1, f0
/* 804312B0  FC 04 00 32 */	fmul f0, f4, f0
/* 804312B4  FC 00 00 18 */	frsp f0, f0
/* 804312B8  D0 01 00 08 */	stfs f0, 8(r1)
/* 804312BC  C0 81 00 08 */	lfs f4, 8(r1)
lbl_804312C0:
/* 804312C0  3C 60 80 64 */	lis r3, lit_468@ha /* 0x80644248@ha */
/* 804312C4  3C A0 80 64 */	lis r5, lit_1997@ha /* 0x8064437C@ha */
/* 804312C8  C0 03 42 48 */	lfs f0, lit_468@l(r3)  /* 0x80644248@l */
/* 804312CC  3C 80 80 64 */	lis r4, lit_530@ha /* 0x80644274@ha */
/* 804312D0  C0 45 43 7C */	lfs f2, lit_1997@l(r5)  /* 0x8064437C@l */
/* 804312D4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 804312D8  C0 24 42 74 */	lfs f1, lit_530@l(r4)  /* 0x80644274@l */
/* 804312DC  40 80 00 08 */	bge lbl_804312E4
/* 804312E0  48 00 00 18 */	b lbl_804312F8
lbl_804312E4:
/* 804312E4  FC 04 08 40 */	fcmpo cr0, f4, f1
/* 804312E8  40 81 00 0C */	ble lbl_804312F4
/* 804312EC  FC 00 08 90 */	fmr f0, f1
/* 804312F0  48 00 00 08 */	b lbl_804312F8
lbl_804312F4:
/* 804312F4  FC 00 20 90 */	fmr f0, f4
lbl_804312F8:
/* 804312F8  3C 60 80 64 */	lis r3, lit_530@ha /* 0x80644274@ha */
/* 804312FC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80431300  38 83 42 74 */	addi r4, r3, lit_530@l /* 0x80644274@l */
/* 80431304  3C 7E 00 01 */	addis r3, r30, 1
/* 80431308  C0 04 00 00 */	lfs f0, 0(r4)
/* 8043130C  57 E0 08 3C */	slwi r0, r31, 1
/* 80431310  7C 63 02 14 */	add r3, r3, r0
/* 80431314  EC 01 00 24 */	fdivs f0, f1, f0
/* 80431318  EC 02 00 32 */	fmuls f0, f2, f0
/* 8043131C  FC 00 00 1E */	fctiwz f0, f0
/* 80431320  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80431324  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80431328  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8043132C  B0 03 4D BC */	sth r0, 0x4dbc(r3)
lbl_80431330:
/* 80431330  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80431334  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80431338  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 8043133C  7C 08 03 A6 */	mtlr r0
/* 80431340  38 21 00 50 */	addi r1, r1, 0x50
/* 80431344  4E 80 00 20 */	blr 
