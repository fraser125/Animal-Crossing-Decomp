lbl_805D34D8:
/* 805D34D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D34DC  7C 08 02 A6 */	mflr r0
/* 805D34E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D34E4  39 61 00 20 */	addi r11, r1, 0x20
/* 805D34E8  4B AC 79 ED */	bl func_8009AED4
/* 805D34EC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805D34F0  3C A0 80 6D */	lis r5, data_806CBA10@ha /* 0x806CBA10@ha */
/* 805D34F4  3B E4 85 38 */	addi r31, r4, common_data@l /* 0x81138538@l */
/* 805D34F8  7C 7D 1B 78 */	mr r29, r3
/* 805D34FC  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 805D3500  3B C5 BA 10 */	addi r30, r5, data_806CBA10@l /* 0x806CBA10@l */
/* 805D3504  2C 00 00 31 */	cmpwi r0, 0x31
/* 805D3508  41 82 00 1C */	beq lbl_805D3524
/* 805D350C  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D3510  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D3514  80 63 00 00 */	lwz r3, 0(r3)
/* 805D3518  A8 03 17 52 */	lha r0, 0x1752(r3)
/* 805D351C  2C 00 00 00 */	cmpwi r0, 0
/* 805D3520  41 82 00 70 */	beq lbl_805D3590
lbl_805D3524:
/* 805D3524  88 1D 06 A3 */	lbz r0, 0x6a3(r29)
/* 805D3528  2C 00 00 02 */	cmpwi r0, 2
/* 805D352C  41 82 00 40 */	beq lbl_805D356C
/* 805D3530  40 80 00 14 */	bge lbl_805D3544
/* 805D3534  2C 00 00 00 */	cmpwi r0, 0
/* 805D3538  41 82 00 1C */	beq lbl_805D3554
/* 805D353C  40 80 00 24 */	bge lbl_805D3560
/* 805D3540  48 00 00 A8 */	b lbl_805D35E8
lbl_805D3544:
/* 805D3544  2C 00 00 04 */	cmpwi r0, 4
/* 805D3548  41 82 00 3C */	beq lbl_805D3584
/* 805D354C  40 80 00 9C */	bge lbl_805D35E8
/* 805D3550  48 00 00 28 */	b lbl_805D3578
lbl_805D3554:
/* 805D3554  38 00 00 0A */	li r0, 0xa
/* 805D3558  98 1D 06 99 */	stb r0, 0x699(r29)
/* 805D355C  48 00 00 8C */	b lbl_805D35E8
lbl_805D3560:
/* 805D3560  38 00 00 0B */	li r0, 0xb
/* 805D3564  98 1D 06 99 */	stb r0, 0x699(r29)
/* 805D3568  48 00 00 80 */	b lbl_805D35E8
lbl_805D356C:
/* 805D356C  38 00 00 0C */	li r0, 0xc
/* 805D3570  98 1D 06 99 */	stb r0, 0x699(r29)
/* 805D3574  48 00 00 74 */	b lbl_805D35E8
lbl_805D3578:
/* 805D3578  38 00 00 0D */	li r0, 0xd
/* 805D357C  98 1D 06 99 */	stb r0, 0x699(r29)
/* 805D3580  48 00 00 68 */	b lbl_805D35E8
lbl_805D3584:
/* 805D3584  38 00 00 0E */	li r0, 0xe
/* 805D3588  98 1D 06 99 */	stb r0, 0x699(r29)
/* 805D358C  48 00 00 5C */	b lbl_805D35E8
lbl_805D3590:
/* 805D3590  88 1D 06 A3 */	lbz r0, 0x6a3(r29)
/* 805D3594  2C 00 00 02 */	cmpwi r0, 2
/* 805D3598  41 82 00 3C */	beq lbl_805D35D4
/* 805D359C  40 80 00 14 */	bge lbl_805D35B0
/* 805D35A0  2C 00 00 00 */	cmpwi r0, 0
/* 805D35A4  41 82 00 18 */	beq lbl_805D35BC
/* 805D35A8  40 80 00 20 */	bge lbl_805D35C8
/* 805D35AC  48 00 00 3C */	b lbl_805D35E8
lbl_805D35B0:
/* 805D35B0  2C 00 00 04 */	cmpwi r0, 4
/* 805D35B4  40 80 00 34 */	bge lbl_805D35E8
/* 805D35B8  48 00 00 28 */	b lbl_805D35E0
lbl_805D35BC:
/* 805D35BC  38 00 00 03 */	li r0, 3
/* 805D35C0  98 1D 06 99 */	stb r0, 0x699(r29)
/* 805D35C4  48 00 00 24 */	b lbl_805D35E8
lbl_805D35C8:
/* 805D35C8  38 00 00 04 */	li r0, 4
/* 805D35CC  98 1D 06 99 */	stb r0, 0x699(r29)
/* 805D35D0  48 00 00 18 */	b lbl_805D35E8
lbl_805D35D4:
/* 805D35D4  38 00 00 05 */	li r0, 5
/* 805D35D8  98 1D 06 99 */	stb r0, 0x699(r29)
/* 805D35DC  48 00 00 0C */	b lbl_805D35E8
lbl_805D35E0:
/* 805D35E0  38 00 00 06 */	li r0, 6
/* 805D35E4  98 1D 06 99 */	stb r0, 0x699(r29)
lbl_805D35E8:
/* 805D35E8  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 805D35EC  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 805D35F0  4B DC 29 21 */	bl chkTrigger
/* 805D35F4  2C 03 00 00 */	cmpwi r3, 0
/* 805D35F8  41 82 01 F8 */	beq lbl_805D37F0
/* 805D35FC  7F A3 EB 78 */	mr r3, r29
/* 805D3600  4B FF F3 35 */	bl mDE_set_undo_texture
/* 805D3604  38 60 04 55 */	li r3, 0x455
/* 805D3608  48 05 A6 FD */	bl sAdo_SysTrgStart
/* 805D360C  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 805D3610  2C 00 00 31 */	cmpwi r0, 0x31
/* 805D3614  41 82 00 1C */	beq lbl_805D3630
/* 805D3618  3C 60 81 16 */	lis r3, debug_mode@ha /* 0x81166138@ha */
/* 805D361C  38 63 61 38 */	addi r3, r3, debug_mode@l /* 0x81166138@l */
/* 805D3620  80 63 00 00 */	lwz r3, 0(r3)
/* 805D3624  A8 03 17 52 */	lha r0, 0x1752(r3)
/* 805D3628  2C 00 00 00 */	cmpwi r0, 0
/* 805D362C  41 82 00 FC */	beq lbl_805D3728
lbl_805D3630:
/* 805D3630  88 1D 06 A3 */	lbz r0, 0x6a3(r29)
/* 805D3634  2C 00 00 02 */	cmpwi r0, 2
/* 805D3638  41 82 00 78 */	beq lbl_805D36B0
/* 805D363C  40 80 00 14 */	bge lbl_805D3650
/* 805D3640  2C 00 00 00 */	cmpwi r0, 0
/* 805D3644  41 82 00 1C */	beq lbl_805D3660
/* 805D3648  40 80 00 40 */	bge lbl_805D3688
/* 805D364C  48 00 01 A4 */	b lbl_805D37F0
lbl_805D3650:
/* 805D3650  2C 00 00 04 */	cmpwi r0, 4
/* 805D3654  41 82 00 AC */	beq lbl_805D3700
/* 805D3658  40 80 01 98 */	bge lbl_805D37F0
/* 805D365C  48 00 00 7C */	b lbl_805D36D8
lbl_805D3660:
/* 805D3660  80 BD 06 68 */	lwz r5, 0x668(r29)
/* 805D3664  7F A3 EB 78 */	mr r3, r29
/* 805D3668  80 DD 06 6C */	lwz r6, 0x66c(r29)
/* 805D366C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805D3670  38 E0 00 0C */	li r7, 0xc
/* 805D3674  39 00 00 0C */	li r8, 0xc
/* 805D3678  39 20 00 05 */	li r9, 5
/* 805D367C  39 40 00 06 */	li r10, 6
/* 805D3680  4B FF EE A9 */	bl mDE_set_texture_template
/* 805D3684  48 00 01 6C */	b lbl_805D37F0
lbl_805D3688:
/* 805D3688  80 BD 06 68 */	lwz r5, 0x668(r29)
/* 805D368C  7F A3 EB 78 */	mr r3, r29
/* 805D3690  80 DD 06 6C */	lwz r6, 0x66c(r29)
/* 805D3694  38 9E 05 60 */	addi r4, r30, 0x560
/* 805D3698  38 E0 00 0C */	li r7, 0xc
/* 805D369C  39 00 00 0C */	li r8, 0xc
/* 805D36A0  39 20 00 05 */	li r9, 5
/* 805D36A4  39 40 00 06 */	li r10, 6
/* 805D36A8  4B FF EE 81 */	bl mDE_set_texture_template
/* 805D36AC  48 00 01 44 */	b lbl_805D37F0
lbl_805D36B0:
/* 805D36B0  80 BD 06 68 */	lwz r5, 0x668(r29)
/* 805D36B4  7F A3 EB 78 */	mr r3, r29
/* 805D36B8  80 DD 06 6C */	lwz r6, 0x66c(r29)
/* 805D36BC  38 9E 05 F0 */	addi r4, r30, 0x5f0
/* 805D36C0  38 E0 00 0C */	li r7, 0xc
/* 805D36C4  39 00 00 0C */	li r8, 0xc
/* 805D36C8  39 20 00 05 */	li r9, 5
/* 805D36CC  39 40 00 06 */	li r10, 6
/* 805D36D0  4B FF EE 59 */	bl mDE_set_texture_template
/* 805D36D4  48 00 01 1C */	b lbl_805D37F0
lbl_805D36D8:
/* 805D36D8  80 BD 06 68 */	lwz r5, 0x668(r29)
/* 805D36DC  7F A3 EB 78 */	mr r3, r29
/* 805D36E0  80 DD 06 6C */	lwz r6, 0x66c(r29)
/* 805D36E4  38 9E 06 80 */	addi r4, r30, 0x680
/* 805D36E8  38 E0 00 0C */	li r7, 0xc
/* 805D36EC  39 00 00 0C */	li r8, 0xc
/* 805D36F0  39 20 00 05 */	li r9, 5
/* 805D36F4  39 40 00 06 */	li r10, 6
/* 805D36F8  4B FF EE 31 */	bl mDE_set_texture_template
/* 805D36FC  48 00 00 F4 */	b lbl_805D37F0
lbl_805D3700:
/* 805D3700  80 BD 06 68 */	lwz r5, 0x668(r29)
/* 805D3704  7F A3 EB 78 */	mr r3, r29
/* 805D3708  80 DD 06 6C */	lwz r6, 0x66c(r29)
/* 805D370C  38 9E 07 10 */	addi r4, r30, 0x710
/* 805D3710  38 E0 00 0C */	li r7, 0xc
/* 805D3714  39 00 00 0C */	li r8, 0xc
/* 805D3718  39 20 00 05 */	li r9, 5
/* 805D371C  39 40 00 06 */	li r10, 6
/* 805D3720  4B FF EE 09 */	bl mDE_set_texture_template
/* 805D3724  48 00 00 CC */	b lbl_805D37F0
lbl_805D3728:
/* 805D3728  88 1D 06 A3 */	lbz r0, 0x6a3(r29)
/* 805D372C  2C 00 00 02 */	cmpwi r0, 2
/* 805D3730  41 82 00 74 */	beq lbl_805D37A4
/* 805D3734  40 80 00 14 */	bge lbl_805D3748
/* 805D3738  2C 00 00 00 */	cmpwi r0, 0
/* 805D373C  41 82 00 18 */	beq lbl_805D3754
/* 805D3740  40 80 00 3C */	bge lbl_805D377C
/* 805D3744  48 00 00 AC */	b lbl_805D37F0
lbl_805D3748:
/* 805D3748  2C 00 00 04 */	cmpwi r0, 4
/* 805D374C  40 80 00 A4 */	bge lbl_805D37F0
/* 805D3750  48 00 00 7C */	b lbl_805D37CC
lbl_805D3754:
/* 805D3754  80 BD 06 68 */	lwz r5, 0x668(r29)
/* 805D3758  7F A3 EB 78 */	mr r3, r29
/* 805D375C  80 DD 06 6C */	lwz r6, 0x66c(r29)
/* 805D3760  38 9E 02 90 */	addi r4, r30, 0x290
/* 805D3764  38 E0 00 0C */	li r7, 0xc
/* 805D3768  39 00 00 0C */	li r8, 0xc
/* 805D376C  39 20 00 05 */	li r9, 5
/* 805D3770  39 40 00 06 */	li r10, 6
/* 805D3774  4B FF ED B5 */	bl mDE_set_texture_template
/* 805D3778  48 00 00 78 */	b lbl_805D37F0
lbl_805D377C:
/* 805D377C  80 BD 06 68 */	lwz r5, 0x668(r29)
/* 805D3780  7F A3 EB 78 */	mr r3, r29
/* 805D3784  80 DD 06 6C */	lwz r6, 0x66c(r29)
/* 805D3788  38 9E 03 20 */	addi r4, r30, 0x320
/* 805D378C  38 E0 00 0C */	li r7, 0xc
/* 805D3790  39 00 00 0C */	li r8, 0xc
/* 805D3794  39 20 00 05 */	li r9, 5
/* 805D3798  39 40 00 06 */	li r10, 6
/* 805D379C  4B FF ED 8D */	bl mDE_set_texture_template
/* 805D37A0  48 00 00 50 */	b lbl_805D37F0
lbl_805D37A4:
/* 805D37A4  80 BD 06 68 */	lwz r5, 0x668(r29)
/* 805D37A8  7F A3 EB 78 */	mr r3, r29
/* 805D37AC  80 DD 06 6C */	lwz r6, 0x66c(r29)
/* 805D37B0  38 9E 03 B0 */	addi r4, r30, 0x3b0
/* 805D37B4  38 E0 00 0C */	li r7, 0xc
/* 805D37B8  39 00 00 0C */	li r8, 0xc
/* 805D37BC  39 20 00 05 */	li r9, 5
/* 805D37C0  39 40 00 06 */	li r10, 6
/* 805D37C4  4B FF ED 65 */	bl mDE_set_texture_template
/* 805D37C8  48 00 00 28 */	b lbl_805D37F0
lbl_805D37CC:
/* 805D37CC  80 BD 06 68 */	lwz r5, 0x668(r29)
/* 805D37D0  7F A3 EB 78 */	mr r3, r29
/* 805D37D4  80 DD 06 6C */	lwz r6, 0x66c(r29)
/* 805D37D8  38 9E 04 40 */	addi r4, r30, 0x440
/* 805D37DC  38 E0 00 0C */	li r7, 0xc
/* 805D37E0  39 00 00 0C */	li r8, 0xc
/* 805D37E4  39 20 00 05 */	li r9, 5
/* 805D37E8  39 40 00 06 */	li r10, 6
/* 805D37EC  4B FF ED 3D */	bl mDE_set_texture_template
lbl_805D37F0:
/* 805D37F0  39 61 00 20 */	addi r11, r1, 0x20
/* 805D37F4  4B AC 77 2D */	bl func_8009AF20
/* 805D37F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D37FC  7C 08 03 A6 */	mtlr r0
/* 805D3800  38 21 00 20 */	addi r1, r1, 0x20
/* 805D3804  4E 80 00 20 */	blr 
