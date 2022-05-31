lbl_803F37B0:
/* 803F37B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F37B4  7C 08 02 A6 */	mflr r0
/* 803F37B8  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 803F37BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F37C0  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 803F37C4  2C 00 00 02 */	cmpwi r0, 2
/* 803F37C8  41 80 00 D8 */	blt lbl_803F38A0
/* 803F37CC  3C 60 81 17 */	lis r3, data_81171548@ha /* 0x81171548@ha */
/* 803F37D0  80 03 15 48 */	lwz r0, data_81171548@l(r3)  /* 0x81171548@l */
/* 803F37D4  2C 00 00 01 */	cmpwi r0, 1
/* 803F37D8  40 82 00 C8 */	bne lbl_803F38A0
/* 803F37DC  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803F37E0  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803F37E4  80 63 00 00 */	lwz r3, 0(r3)
/* 803F37E8  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 803F37EC  54 00 06 F6 */	rlwinm r0, r0, 0, 0x1b, 0x1b
/* 803F37F0  2C 00 00 10 */	cmpwi r0, 0x10
/* 803F37F4  40 82 00 AC */	bne lbl_803F38A0
/* 803F37F8  3C 60 81 17 */	lis r3, id@ha /* 0x81171554@ha */
/* 803F37FC  80 03 15 54 */	lwz r0, id@l(r3)  /* 0x81171554@l */
/* 803F3800  2C 00 00 04 */	cmpwi r0, 4
/* 803F3804  40 80 00 60 */	bge lbl_803F3864
/* 803F3808  3C 60 80 66 */	lis r3, timestep@ha /* 0x8065E328@ha */
/* 803F380C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F3810  54 00 10 3A */	slwi r0, r0, 2
/* 803F3814  38 A0 00 01 */	li r5, 1
/* 803F3818  38 63 E3 28 */	addi r3, r3, timestep@l /* 0x8065E328@l */
/* 803F381C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803F3820  7C C3 00 2E */	lwzx r6, r3, r0
/* 803F3824  3C 64 00 02 */	addis r3, r4, 2
/* 803F3828  98 A3 61 2F */	stb r5, 0x612f(r3)
/* 803F382C  38 06 FF FF */	addi r0, r6, -1
/* 803F3830  2C 00 00 0A */	cmpwi r0, 0xa
/* 803F3834  90 C3 61 34 */	stw r6, 0x6134(r3)
/* 803F3838  40 81 00 08 */	ble lbl_803F3840
/* 803F383C  38 00 00 0A */	li r0, 0xa
lbl_803F3840:
/* 803F3840  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 803F3844  3C 60 81 17 */	lis r3, id@ha /* 0x81171554@ha */
/* 803F3848  80 A4 61 38 */	lwz r5, debug_mode@l(r4)  /* 0x81166138@l */
/* 803F384C  38 83 15 54 */	addi r4, r3, id@l /* 0x81171554@l */
/* 803F3850  B0 05 00 DA */	sth r0, 0xda(r5)
/* 803F3854  80 64 00 00 */	lwz r3, 0(r4)
/* 803F3858  38 03 00 01 */	addi r0, r3, 1
/* 803F385C  90 04 00 00 */	stw r0, 0(r4)
/* 803F3860  48 00 00 40 */	b lbl_803F38A0
lbl_803F3864:
/* 803F3864  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F3868  38 00 00 00 */	li r0, 0
/* 803F386C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F3870  3C 63 00 02 */	addis r3, r3, 2
/* 803F3874  98 03 61 2F */	stb r0, 0x612f(r3)
/* 803F3878  90 03 61 38 */	stw r0, 0x6138(r3)
/* 803F387C  38 63 61 20 */	addi r3, r3, 0x6120
/* 803F3880  48 01 2D FD */	bl lbRTC_SetTime
/* 803F3884  3C 80 81 16 */	lis r4, debug_mode@ha /* 0x81166138@ha */
/* 803F3888  38 00 00 00 */	li r0, 0
/* 803F388C  38 84 61 38 */	addi r4, r4, debug_mode@l /* 0x81166138@l */
/* 803F3890  3C 60 81 17 */	lis r3, id@ha /* 0x81171554@ha */
/* 803F3894  80 84 00 00 */	lwz r4, 0(r4)
/* 803F3898  B0 04 00 DA */	sth r0, 0xda(r4)
/* 803F389C  90 03 15 54 */	stw r0, id@l(r3)  /* 0x81171554@l */
lbl_803F38A0:
/* 803F38A0  3C 60 81 17 */	lis r3, id@ha /* 0x81171554@ha */
/* 803F38A4  38 63 15 54 */	addi r3, r3, id@l /* 0x81171554@l */
/* 803F38A8  80 63 00 00 */	lwz r3, 0(r3)
/* 803F38AC  30 03 FF FF */	addic r0, r3, -1
/* 803F38B0  7C 60 19 10 */	subfe r3, r0, r3
/* 803F38B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F38B8  7C 08 03 A6 */	mtlr r0
/* 803F38BC  38 21 00 10 */	addi r1, r1, 0x10
/* 803F38C0  4E 80 00 20 */	blr 
