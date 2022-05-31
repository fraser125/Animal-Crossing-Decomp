lbl_803F3550:
/* 803F3550  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803F3554  7C 08 02 A6 */	mflr r0
/* 803F3558  90 01 00 54 */	stw r0, 0x54(r1)
/* 803F355C  39 61 00 50 */	addi r11, r1, 0x50
/* 803F3560  4B CA 79 75 */	bl func_8009AED4
/* 803F3564  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F3568  3C A0 80 66 */	lis r5, data_8065E278@ha /* 0x8065E278@ha */
/* 803F356C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F3570  3C 83 00 02 */	addis r4, r3, 2
/* 803F3574  3B E5 E2 78 */	addi r31, r5, data_8065E278@l /* 0x8065E278@l */
/* 803F3578  80 04 61 38 */	lwz r0, 0x6138(r4)
/* 803F357C  2C 00 00 01 */	cmpwi r0, 1
/* 803F3580  41 82 00 48 */	beq lbl_803F35C8
/* 803F3584  3C 60 81 1D */	lis r3, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 803F3588  80 03 B7 A8 */	lwz r0, data_811CB7A8@l(r3)  /* 0x811CB7A8@l */
/* 803F358C  2C 00 00 00 */	cmpwi r0, 0
/* 803F3590  41 82 00 38 */	beq lbl_803F35C8
/* 803F3594  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803F3598  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803F359C  80 63 00 00 */	lwz r3, 0(r3)
/* 803F35A0  A0 03 00 38 */	lhz r0, 0x38(r3)
/* 803F35A4  54 03 04 20 */	rlwinm r3, r0, 0, 0x10, 0x10
/* 803F35A8  3C 03 00 00 */	addis r0, r3, 0
/* 803F35AC  28 00 80 00 */	cmplwi r0, 0x8000
/* 803F35B0  40 82 00 18 */	bne lbl_803F35C8
/* 803F35B4  3C 60 81 17 */	lis r3, disp@ha /* 0x81171550@ha */
/* 803F35B8  84 03 15 50 */	lwzu r0, disp@l(r3)  /* 0x81171550@l */
/* 803F35BC  68 00 00 01 */	xori r0, r0, 1
/* 803F35C0  90 03 00 00 */	stw r0, 0(r3)
/* 803F35C4  98 04 61 2E */	stb r0, 0x612e(r4)
lbl_803F35C8:
/* 803F35C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803F35CC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803F35D0  3C 63 00 02 */	addis r3, r3, 2
/* 803F35D4  88 03 61 2E */	lbz r0, 0x612e(r3)
/* 803F35D8  28 00 00 01 */	cmplwi r0, 1
/* 803F35DC  40 82 01 BC */	bne lbl_803F3798
/* 803F35E0  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803F35E4  38 61 00 08 */	addi r3, r1, 8
/* 803F35E8  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 803F35EC  80 84 00 00 */	lwz r4, 0(r4)
/* 803F35F0  83 C4 00 00 */	lwz r30, 0(r4)
/* 803F35F4  4B C6 81 F1 */	bl gfxprint_init
/* 803F35F8  83 BE 02 D0 */	lwz r29, 0x2d0(r30)
/* 803F35FC  7F A3 EB 78 */	mr r3, r29
/* 803F3600  48 01 1D C9 */	bl func_804053C8
/* 803F3604  80 DE 02 C0 */	lwz r6, 0x2c0(r30)
/* 803F3608  7C 64 1B 78 */	mr r4, r3
/* 803F360C  3C 00 DE 00 */	lis r0, 0xde00
/* 803F3610  38 61 00 08 */	addi r3, r1, 8
/* 803F3614  38 A6 00 08 */	addi r5, r6, 8
/* 803F3618  90 BE 02 C0 */	stw r5, 0x2c0(r30)
/* 803F361C  90 06 00 00 */	stw r0, 0(r6)
/* 803F3620  90 86 00 04 */	stw r4, 4(r6)
/* 803F3624  4B C6 82 55 */	bl gfxprint_open
/* 803F3628  38 61 00 08 */	addi r3, r1, 8
/* 803F362C  38 80 00 FF */	li r4, 0xff
/* 803F3630  38 A0 00 FF */	li r5, 0xff
/* 803F3634  38 C0 00 FF */	li r6, 0xff
/* 803F3638  38 E0 00 FF */	li r7, 0xff
/* 803F363C  4B C6 7B 65 */	bl gfxprint_color
/* 803F3640  38 61 00 08 */	addi r3, r1, 8
/* 803F3644  38 80 00 03 */	li r4, 3
/* 803F3648  38 A0 00 03 */	li r5, 3
/* 803F364C  4B C6 7B C5 */	bl gfxprint_locate8x8
/* 803F3650  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F3654  38 61 00 08 */	addi r3, r1, 8
/* 803F3658  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803F365C  38 9F 00 90 */	addi r4, r31, 0x90
/* 803F3660  3C A5 00 02 */	addis r5, r5, 2
/* 803F3664  A0 A5 61 26 */	lhz r5, 0x6126(r5)
/* 803F3668  4C C6 31 82 */	crclr 6
/* 803F366C  4B C6 82 B1 */	bl gfxprint_printf
/* 803F3670  38 61 00 08 */	addi r3, r1, 8
/* 803F3674  38 80 00 08 */	li r4, 8
/* 803F3678  38 A0 00 03 */	li r5, 3
/* 803F367C  4B C6 7B 95 */	bl gfxprint_locate8x8
/* 803F3680  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F3684  38 61 00 08 */	addi r3, r1, 8
/* 803F3688  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803F368C  38 9F 00 98 */	addi r4, r31, 0x98
/* 803F3690  3C A5 00 02 */	addis r5, r5, 2
/* 803F3694  88 A5 61 25 */	lbz r5, 0x6125(r5)
/* 803F3698  4C C6 31 82 */	crclr 6
/* 803F369C  4B C6 82 81 */	bl gfxprint_printf
/* 803F36A0  38 61 00 08 */	addi r3, r1, 8
/* 803F36A4  38 80 00 0B */	li r4, 0xb
/* 803F36A8  38 A0 00 03 */	li r5, 3
/* 803F36AC  4B C6 7B 65 */	bl gfxprint_locate8x8
/* 803F36B0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F36B4  38 61 00 08 */	addi r3, r1, 8
/* 803F36B8  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803F36BC  38 9F 00 A0 */	addi r4, r31, 0xa0
/* 803F36C0  3C A5 00 02 */	addis r5, r5, 2
/* 803F36C4  88 A5 61 23 */	lbz r5, 0x6123(r5)
/* 803F36C8  4C C6 31 82 */	crclr 6
/* 803F36CC  4B C6 82 51 */	bl gfxprint_printf
/* 803F36D0  38 61 00 08 */	addi r3, r1, 8
/* 803F36D4  38 80 00 0E */	li r4, 0xe
/* 803F36D8  38 A0 00 03 */	li r5, 3
/* 803F36DC  4B C6 7B 35 */	bl gfxprint_locate8x8
/* 803F36E0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F36E4  38 61 00 08 */	addi r3, r1, 8
/* 803F36E8  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803F36EC  38 9F 00 A8 */	addi r4, r31, 0xa8
/* 803F36F0  3C A5 00 02 */	addis r5, r5, 2
/* 803F36F4  88 A5 61 22 */	lbz r5, 0x6122(r5)
/* 803F36F8  4C C6 31 82 */	crclr 6
/* 803F36FC  4B C6 82 21 */	bl gfxprint_printf
/* 803F3700  38 61 00 08 */	addi r3, r1, 8
/* 803F3704  38 80 00 11 */	li r4, 0x11
/* 803F3708  38 A0 00 03 */	li r5, 3
/* 803F370C  4B C6 7B 05 */	bl gfxprint_locate8x8
/* 803F3710  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F3714  38 61 00 08 */	addi r3, r1, 8
/* 803F3718  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803F371C  38 9F 00 A0 */	addi r4, r31, 0xa0
/* 803F3720  3C A5 00 02 */	addis r5, r5, 2
/* 803F3724  88 A5 61 21 */	lbz r5, 0x6121(r5)
/* 803F3728  4C C6 31 82 */	crclr 6
/* 803F372C  4B C6 81 F1 */	bl gfxprint_printf
/* 803F3730  38 61 00 08 */	addi r3, r1, 8
/* 803F3734  38 80 00 14 */	li r4, 0x14
/* 803F3738  38 A0 00 03 */	li r5, 3
/* 803F373C  4B C6 7A D5 */	bl gfxprint_locate8x8
/* 803F3740  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803F3744  38 61 00 08 */	addi r3, r1, 8
/* 803F3748  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803F374C  38 9F 00 A0 */	addi r4, r31, 0xa0
/* 803F3750  3C A5 00 02 */	addis r5, r5, 2
/* 803F3754  88 A5 61 20 */	lbz r5, 0x6120(r5)
/* 803F3758  4C C6 31 82 */	crclr 6
/* 803F375C  4B C6 81 C1 */	bl gfxprint_printf
/* 803F3760  38 61 00 08 */	addi r3, r1, 8
/* 803F3764  4B C6 81 61 */	bl gfxprint_close
/* 803F3768  7C 64 1B 78 */	mr r4, r3
/* 803F376C  3C 00 DF 00 */	lis r0, 0xdf00
/* 803F3770  90 03 00 00 */	stw r0, 0(r3)
/* 803F3774  38 00 00 00 */	li r0, 0
/* 803F3778  3B E4 00 08 */	addi r31, r4, 8
/* 803F377C  7F A3 EB 78 */	mr r3, r29
/* 803F3780  90 04 00 04 */	stw r0, 4(r4)
/* 803F3784  7F E4 FB 78 */	mr r4, r31
/* 803F3788  48 01 1C 49 */	bl gfxclose
/* 803F378C  93 FE 02 D0 */	stw r31, 0x2d0(r30)
/* 803F3790  38 61 00 08 */	addi r3, r1, 8
/* 803F3794  4B C6 80 E1 */	bl gfxprint_cleanup
lbl_803F3798:
/* 803F3798  39 61 00 50 */	addi r11, r1, 0x50
/* 803F379C  4B CA 77 85 */	bl func_8009AF20
/* 803F37A0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803F37A4  7C 08 03 A6 */	mtlr r0
/* 803F37A8  38 21 00 50 */	addi r1, r1, 0x50
/* 803F37AC  4E 80 00 20 */	blr 
