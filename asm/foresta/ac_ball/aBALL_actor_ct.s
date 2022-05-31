lbl_80411FDC:
/* 80411FDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80411FE0  7C 08 02 A6 */	mflr r0
/* 80411FE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80411FE8  39 61 00 30 */	addi r11, r1, 0x30
/* 80411FEC  4B C8 8E E9 */	bl func_8009AED4
/* 80411FF0  3C E0 81 1D */	lis r7, Global_Actor_p@ha /* 0x811CB818@ha */
/* 80411FF4  7C 7D 1B 78 */	mr r29, r3
/* 80411FF8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80411FFC  93 A7 B8 18 */	stw r29, Global_Actor_p@l(r7)  /* 0x811CB818@l */
/* 80412000  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 80412004  3C C0 80 64 */	lis r6, lit_472@ha /* 0x806439AC@ha */
/* 80412008  3F E3 00 03 */	addis r31, r3, 3
/* 8041200C  C0 26 39 AC */	lfs f1, lit_472@l(r6)  /* 0x806439AC@l */
/* 80412010  C0 1F 88 6C */	lfs f0, -0x7794(r31)
/* 80412014  7C 9E 23 78 */	mr r30, r4
/* 80412018  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8041201C  40 82 00 C4 */	bne lbl_804120E0
/* 80412020  C0 1F 88 70 */	lfs f0, -0x7790(r31)
/* 80412024  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80412028  40 82 00 B8 */	bne lbl_804120E0
/* 8041202C  C0 1F 88 74 */	lfs f0, -0x778c(r31)
/* 80412030  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80412034  40 82 00 AC */	bne lbl_804120E0
/* 80412038  38 7D 00 28 */	addi r3, r29, 0x28
/* 8041203C  4B FF FE 41 */	bl func_80411E7C
/* 80412040  2C 03 00 00 */	cmpwi r3, 0
/* 80412044  40 82 00 1C */	bne lbl_80412060
/* 80412048  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 8041204C  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 80412050  90 7D 00 28 */	stw r3, 0x28(r29)
/* 80412054  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 80412058  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 8041205C  90 1D 00 30 */	stw r0, 0x30(r29)
lbl_80412060:
/* 80412060  80 BD 00 28 */	lwz r5, 0x28(r29)
/* 80412064  3C 60 80 64 */	lis r3, lit_472@ha /* 0x806439AC@ha */
/* 80412068  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 8041206C  38 81 00 08 */	addi r4, r1, 8
/* 80412070  C0 23 39 AC */	lfs f1, lit_472@l(r3)  /* 0x806439AC@l */
/* 80412074  38 60 00 00 */	li r3, 0
/* 80412078  90 A1 00 08 */	stw r5, 8(r1)
/* 8041207C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80412080  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 80412084  90 01 00 10 */	stw r0, 0x10(r1)
/* 80412088  4B F7 D6 31 */	bl func_8038F6B8
/* 8041208C  D0 3D 00 2C */	stfs f1, 0x2c(r29)
/* 80412090  4B C4 AC 65 */	bl fqrand
/* 80412094  3C 80 80 64 */	lis r4, lit_473@ha /* 0x806439B0@ha */
/* 80412098  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8041209C  C0 04 39 B0 */	lfs f0, lit_473@l(r4)  /* 0x806439B0@l */
/* 804120A0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804120A4  3C 83 00 03 */	addis r4, r3, 3
/* 804120A8  EC 00 00 72 */	fmuls f0, f0, f1
/* 804120AC  FC 00 00 1E */	fctiwz f0, f0
/* 804120B0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804120B4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804120B8  98 04 88 78 */	stb r0, -0x7788(r4)
/* 804120BC  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 804120C0  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 804120C4  90 7F 88 6C */	stw r3, -0x7794(r31)
/* 804120C8  90 1F 88 70 */	stw r0, -0x7790(r31)
/* 804120CC  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 804120D0  90 1F 88 74 */	stw r0, -0x778c(r31)
/* 804120D4  88 04 88 78 */	lbz r0, -0x7788(r4)
/* 804120D8  90 1D 01 F8 */	stw r0, 0x1f8(r29)
/* 804120DC  48 00 00 30 */	b lbl_8041210C
lbl_804120E0:
/* 804120E0  80 9F 88 6C */	lwz r4, -0x7794(r31)
/* 804120E4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804120E8  80 1F 88 70 */	lwz r0, -0x7790(r31)
/* 804120EC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804120F0  3C 63 00 03 */	addis r3, r3, 3
/* 804120F4  90 9D 00 28 */	stw r4, 0x28(r29)
/* 804120F8  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 804120FC  80 1F 88 74 */	lwz r0, -0x778c(r31)
/* 80412100  90 1D 00 30 */	stw r0, 0x30(r29)
/* 80412104  88 03 88 78 */	lbz r0, -0x7788(r3)
/* 80412108  90 1D 01 F8 */	stw r0, 0x1f8(r29)
lbl_8041210C:
/* 8041210C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80412110  3C A0 80 64 */	lis r5, lit_472@ha /* 0x806439AC@ha */
/* 80412114  39 03 85 38 */	addi r8, r3, common_data@l /* 0x81138538@l */
/* 80412118  3C 80 80 64 */	lis r4, lit_474@ha /* 0x806439B4@ha */
/* 8041211C  38 C4 39 B4 */	addi r6, r4, lit_474@l /* 0x806439B4@l */
/* 80412120  38 E5 39 AC */	addi r7, r5, lit_472@l /* 0x806439AC@l */
/* 80412124  3C 60 80 64 */	lis r3, lit_475@ha /* 0x806439B8@ha */
/* 80412128  3C 80 80 37 */	lis r4, mAc_ActorShadowEllipse@ha /* 0x80376F88@ha */
/* 8041212C  38 A3 39 B8 */	addi r5, r3, lit_475@l /* 0x806439B8@l */
/* 80412130  38 00 00 00 */	li r0, 0
/* 80412134  3C 68 00 02 */	addis r3, r8, 2
/* 80412138  C0 27 00 00 */	lfs f1, 0(r7)
/* 8041213C  90 03 60 E0 */	stw r0, 0x60e0(r3)
/* 80412140  38 84 6F 88 */	addi r4, r4, mAc_ActorShadowEllipse@l /* 0x80376F88@l */
/* 80412144  C0 46 00 00 */	lfs f2, 0(r6)
/* 80412148  7F A3 EB 78 */	mr r3, r29
/* 8041214C  C0 65 00 00 */	lfs f3, 0(r5)
/* 80412150  4B F6 22 A1 */	bl Shape_Info_init
/* 80412154  7F C3 F3 78 */	mr r3, r30
/* 80412158  38 9D 01 74 */	addi r4, r29, 0x174
/* 8041215C  4B F8 24 BD */	bl ClObjPipe_ct
/* 80412160  3C 80 80 66 */	lis r4, aBALL_CoInfoData@ha /* 0x8065FB28@ha */
/* 80412164  7F C3 F3 78 */	mr r3, r30
/* 80412168  38 C4 FB 28 */	addi r6, r4, aBALL_CoInfoData@l /* 0x8065FB28@l */
/* 8041216C  7F A5 EB 78 */	mr r5, r29
/* 80412170  38 9D 01 74 */	addi r4, r29, 0x174
/* 80412174  4B F8 25 3D */	bl ClObjPipe_set5
/* 80412178  3C 80 80 66 */	lis r4, aBALL_StatusData@ha /* 0x8065FB38@ha */
/* 8041217C  38 7D 00 C4 */	addi r3, r29, 0xc4
/* 80412180  38 84 FB 38 */	addi r4, r4, aBALL_StatusData@l /* 0x8065FB38@l */
/* 80412184  4B F8 38 45 */	bl CollisionCheck_Status_set3
/* 80412188  38 00 00 03 */	li r0, 3
/* 8041218C  7F A3 EB 78 */	mr r3, r29
/* 80412190  B0 1D 02 06 */	sth r0, 0x206(r29)
/* 80412194  7F C4 F3 78 */	mr r4, r30
/* 80412198  48 00 0C E5 */	bl aBALL_process_ground_init
/* 8041219C  3C 60 80 64 */	lis r3, lit_476@ha /* 0x806439BC@ha */
/* 804121A0  38 00 00 00 */	li r0, 0
/* 804121A4  38 A3 39 BC */	addi r5, r3, lit_476@l /* 0x806439BC@l */
/* 804121A8  90 1D 01 DC */	stw r0, 0x1dc(r29)
/* 804121AC  3C 60 80 64 */	lis r3, lit_477@ha /* 0x806439C0@ha */
/* 804121B0  C0 25 00 00 */	lfs f1, 0(r5)
/* 804121B4  38 83 39 C0 */	addi r4, r3, lit_477@l /* 0x806439C0@l */
/* 804121B8  3C 60 80 64 */	lis r3, lit_472@ha /* 0x806439AC@ha */
/* 804121BC  C0 04 00 00 */	lfs f0, 0(r4)
/* 804121C0  38 83 39 AC */	addi r4, r3, lit_472@l /* 0x806439AC@l */
/* 804121C4  D0 3D 00 7C */	stfs f1, 0x7c(r29)
/* 804121C8  C0 44 00 00 */	lfs f2, 0(r4)
/* 804121CC  3C 60 80 64 */	lis r3, lit_478@ha /* 0x806439C4@ha */
/* 804121D0  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 804121D4  38 83 39 C4 */	addi r4, r3, lit_478@l /* 0x806439C4@l */
/* 804121D8  3C 60 80 64 */	lis r3, lit_479@ha /* 0x806439C8@ha */
/* 804121DC  C0 24 00 00 */	lfs f1, 0(r4)
/* 804121E0  D0 5D 00 74 */	stfs f2, 0x74(r29)
/* 804121E4  C0 03 39 C8 */	lfs f0, lit_479@l(r3)  /* 0x806439C8@l */
/* 804121E8  D0 5D 01 EC */	stfs f2, 0x1ec(r29)
/* 804121EC  D0 3D 01 F0 */	stfs f1, 0x1f0(r29)
/* 804121F0  D0 5D 01 F4 */	stfs f2, 0x1f4(r29)
/* 804121F4  D0 1D 00 5C */	stfs f0, 0x5c(r29)
/* 804121F8  D0 1D 00 60 */	stfs f0, 0x60(r29)
/* 804121FC  D0 1D 00 64 */	stfs f0, 0x64(r29)
/* 80412200  4B C4 AA CD */	bl func_8005CCCC
/* 80412204  B0 7D 02 00 */	sth r3, 0x200(r29)
/* 80412208  4B C4 AA C5 */	bl func_8005CCCC
/* 8041220C  B0 7D 02 02 */	sth r3, 0x202(r29)
/* 80412210  4B C4 AA BD */	bl func_8005CCCC
/* 80412214  B0 7D 02 04 */	sth r3, 0x204(r29)
/* 80412218  38 00 00 00 */	li r0, 0
/* 8041221C  39 61 00 30 */	addi r11, r1, 0x30
/* 80412220  B0 1D 02 0A */	sth r0, 0x20a(r29)
/* 80412224  B0 1D 02 0C */	sth r0, 0x20c(r29)
/* 80412228  4B C8 8C F9 */	bl func_8009AF20
/* 8041222C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80412230  7C 08 03 A6 */	mtlr r0
/* 80412234  38 21 00 30 */	addi r1, r1, 0x30
/* 80412238  4E 80 00 20 */	blr 
