lbl_8037702C:
/* 8037702C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80377030  7C 08 02 A6 */	mflr r0
/* 80377034  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 80377038  38 80 04 4C */	li r4, 0x44c
/* 8037703C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80377040  38 63 C9 68 */	addi r3, r3, banti@l /* 0x8112C968@l */
/* 80377044  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80377048  4B CE 60 21 */	bl bzero
/* 8037704C  3C 60 80 64 */	lis r3, data_8064129C@ha /* 0x8064129C@ha */
/* 80377050  3C A0 81 13 */	lis r5, banti@ha /* 0x8112C968@ha */
/* 80377054  38 83 12 9C */	addi r4, r3, data_8064129C@l /* 0x8064129C@l */
/* 80377058  38 00 00 00 */	li r0, 0
/* 8037705C  C0 04 00 00 */	lfs f0, 0(r4)
/* 80377060  39 05 C9 68 */	addi r8, r5, banti@l /* 0x8112C968@l */
/* 80377064  3C 60 80 ED */	lis r3, cKF_bs_r_clk_hiniti@ha /* 0x80ED5818@ha */
/* 80377068  90 08 00 00 */	stw r0, 0(r8)
/* 8037706C  3B E8 00 1C */	addi r31, r8, 0x1c
/* 80377070  38 C8 00 8C */	addi r6, r8, 0x8c
/* 80377074  38 83 58 18 */	addi r4, r3, cKF_bs_r_clk_hiniti@l /* 0x80ED5818@l */
/* 80377078  90 08 00 04 */	stw r0, 4(r8)
/* 8037707C  7F E3 FB 78 */	mr r3, r31
/* 80377080  38 E8 00 AA */	addi r7, r8, 0xaa
/* 80377084  90 08 00 08 */	stw r0, 8(r8)
/* 80377088  38 A0 00 00 */	li r5, 0
/* 8037708C  D0 08 00 0C */	stfs f0, 0xc(r8)
/* 80377090  90 08 00 10 */	stw r0, 0x10(r8)
/* 80377094  90 08 00 14 */	stw r0, 0x14(r8)
/* 80377098  D0 08 00 18 */	stfs f0, 0x18(r8)
/* 8037709C  4B FF 99 F9 */	bl cKF_SkeletonInfo_R_ct
/* 803770A0  7F E3 FB 78 */	mr r3, r31
/* 803770A4  48 00 06 31 */	bl banti_animation_init_hiduke
/* 803770A8  3C 60 80 64 */	lis r3, data_8064129C@ha /* 0x8064129C@ha */
/* 803770AC  3C 80 81 13 */	lis r4, banti@ha /* 0x8112C968@ha */
/* 803770B0  38 A3 12 9C */	addi r5, r3, data_8064129C@l /* 0x8064129C@l */
/* 803770B4  C0 05 00 00 */	lfs f0, 0(r5)
/* 803770B8  38 A4 C9 68 */	addi r5, r4, banti@l /* 0x8112C968@l */
/* 803770BC  3C 60 80 ED */	lis r3, cKF_bs_r_clk_hiniti@ha /* 0x80ED5818@ha */
/* 803770C0  3B E5 00 CC */	addi r31, r5, 0xcc
/* 803770C4  D0 05 00 28 */	stfs f0, 0x28(r5)
/* 803770C8  38 83 58 18 */	addi r4, r3, cKF_bs_r_clk_hiniti@l /* 0x80ED5818@l */
/* 803770CC  38 C5 01 3C */	addi r6, r5, 0x13c
/* 803770D0  38 E5 01 5A */	addi r7, r5, 0x15a
/* 803770D4  7F E3 FB 78 */	mr r3, r31
/* 803770D8  38 A0 00 00 */	li r5, 0
/* 803770DC  4B FF 99 B9 */	bl cKF_SkeletonInfo_R_ct
/* 803770E0  7F E3 FB 78 */	mr r3, r31
/* 803770E4  48 00 05 F1 */	bl banti_animation_init_hiduke
/* 803770E8  3C 60 80 64 */	lis r3, data_8064129C@ha /* 0x8064129C@ha */
/* 803770EC  3C 80 81 13 */	lis r4, banti@ha /* 0x8112C968@ha */
/* 803770F0  38 A3 12 9C */	addi r5, r3, data_8064129C@l /* 0x8064129C@l */
/* 803770F4  C0 05 00 00 */	lfs f0, 0(r5)
/* 803770F8  38 A4 C9 68 */	addi r5, r4, banti@l /* 0x8112C968@l */
/* 803770FC  3C 60 80 ED */	lis r3, cKF_bs_r_clk_jikan@ha /* 0x80ED6558@ha */
/* 80377100  3B E5 01 7C */	addi r31, r5, 0x17c
/* 80377104  D0 05 00 D8 */	stfs f0, 0xd8(r5)
/* 80377108  38 83 65 58 */	addi r4, r3, cKF_bs_r_clk_jikan@l /* 0x80ED6558@l */
/* 8037710C  38 C5 01 EC */	addi r6, r5, 0x1ec
/* 80377110  38 E5 02 0A */	addi r7, r5, 0x20a
/* 80377114  7F E3 FB 78 */	mr r3, r31
/* 80377118  38 A0 00 00 */	li r5, 0
/* 8037711C  4B FF 99 79 */	bl cKF_SkeletonInfo_R_ct
/* 80377120  7F E3 FB 78 */	mr r3, r31
/* 80377124  48 00 06 11 */	bl banti_animation_init_jikan
/* 80377128  3C 60 80 64 */	lis r3, data_8064129C@ha /* 0x8064129C@ha */
/* 8037712C  3C 80 81 13 */	lis r4, banti@ha /* 0x8112C968@ha */
/* 80377130  38 A3 12 9C */	addi r5, r3, data_8064129C@l /* 0x8064129C@l */
/* 80377134  C0 05 00 00 */	lfs f0, 0(r5)
/* 80377138  38 A4 C9 68 */	addi r5, r4, banti@l /* 0x8112C968@l */
/* 8037713C  3C 60 80 ED */	lis r3, cKF_bs_r_clk_jikan@ha /* 0x80ED6558@ha */
/* 80377140  3B E5 02 2C */	addi r31, r5, 0x22c
/* 80377144  D0 05 01 88 */	stfs f0, 0x188(r5)
/* 80377148  38 83 65 58 */	addi r4, r3, cKF_bs_r_clk_jikan@l /* 0x80ED6558@l */
/* 8037714C  38 C5 02 9C */	addi r6, r5, 0x29c
/* 80377150  38 E5 02 BA */	addi r7, r5, 0x2ba
/* 80377154  7F E3 FB 78 */	mr r3, r31
/* 80377158  38 A0 00 00 */	li r5, 0
/* 8037715C  4B FF 99 39 */	bl cKF_SkeletonInfo_R_ct
/* 80377160  7F E3 FB 78 */	mr r3, r31
/* 80377164  48 00 05 D1 */	bl banti_animation_init_jikan
/* 80377168  3C 60 80 64 */	lis r3, data_8064129C@ha /* 0x8064129C@ha */
/* 8037716C  3C 80 81 13 */	lis r4, banti@ha /* 0x8112C968@ha */
/* 80377170  38 A3 12 9C */	addi r5, r3, data_8064129C@l /* 0x8064129C@l */
/* 80377174  C0 05 00 00 */	lfs f0, 0(r5)
/* 80377178  38 A4 C9 68 */	addi r5, r4, banti@l /* 0x8112C968@l */
/* 8037717C  3C 60 80 ED */	lis r3, cKF_bs_r_clk_jikan@ha /* 0x80ED6558@ha */
/* 80377180  3B E5 02 DC */	addi r31, r5, 0x2dc
/* 80377184  D0 05 02 38 */	stfs f0, 0x238(r5)
/* 80377188  38 83 65 58 */	addi r4, r3, cKF_bs_r_clk_jikan@l /* 0x80ED6558@l */
/* 8037718C  38 C5 03 4C */	addi r6, r5, 0x34c
/* 80377190  38 E5 03 6A */	addi r7, r5, 0x36a
/* 80377194  7F E3 FB 78 */	mr r3, r31
/* 80377198  38 A0 00 00 */	li r5, 0
/* 8037719C  4B FF 98 F9 */	bl cKF_SkeletonInfo_R_ct
/* 803771A0  7F E3 FB 78 */	mr r3, r31
/* 803771A4  48 00 05 91 */	bl banti_animation_init_jikan
/* 803771A8  3C 60 80 64 */	lis r3, data_8064129C@ha /* 0x8064129C@ha */
/* 803771AC  3C 80 81 13 */	lis r4, banti@ha /* 0x8112C968@ha */
/* 803771B0  38 A3 12 9C */	addi r5, r3, data_8064129C@l /* 0x8064129C@l */
/* 803771B4  C0 05 00 00 */	lfs f0, 0(r5)
/* 803771B8  38 A4 C9 68 */	addi r5, r4, banti@l /* 0x8112C968@l */
/* 803771BC  3C 60 80 ED */	lis r3, cKF_bs_r_clk_jikan@ha /* 0x80ED6558@ha */
/* 803771C0  3B E5 03 8C */	addi r31, r5, 0x38c
/* 803771C4  D0 05 02 E8 */	stfs f0, 0x2e8(r5)
/* 803771C8  38 83 65 58 */	addi r4, r3, cKF_bs_r_clk_jikan@l /* 0x80ED6558@l */
/* 803771CC  38 C5 03 FC */	addi r6, r5, 0x3fc
/* 803771D0  38 E5 04 1A */	addi r7, r5, 0x41a
/* 803771D4  7F E3 FB 78 */	mr r3, r31
/* 803771D8  38 A0 00 00 */	li r5, 0
/* 803771DC  4B FF 98 B9 */	bl cKF_SkeletonInfo_R_ct
/* 803771E0  7F E3 FB 78 */	mr r3, r31
/* 803771E4  48 00 05 51 */	bl banti_animation_init_jikan
/* 803771E8  3C 80 80 64 */	lis r4, data_8064129C@ha /* 0x8064129C@ha */
/* 803771EC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803771F0  38 A4 12 9C */	addi r5, r4, data_8064129C@l /* 0x8064129C@l */
/* 803771F4  3C 80 81 13 */	lis r4, banti@ha /* 0x8112C968@ha */
/* 803771F8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803771FC  C0 05 00 00 */	lfs f0, 0(r5)
/* 80377200  38 84 C9 68 */	addi r4, r4, banti@l /* 0x8112C968@l */
/* 80377204  3F E3 00 02 */	addis r31, r3, 2
/* 80377208  D0 04 03 98 */	stfs f0, 0x398(r4)
/* 8037720C  3B FF 61 20 */	addi r31, r31, 0x6120
/* 80377210  38 64 04 44 */	addi r3, r4, 0x444
/* 80377214  7F E4 FB 78 */	mr r4, r31
/* 80377218  48 09 00 1D */	bl lbRTC_TimeCopy
/* 8037721C  3C 60 81 13 */	lis r3, banti@ha /* 0x8112C968@ha */
/* 80377220  7F E4 FB 78 */	mr r4, r31
/* 80377224  38 63 C9 68 */	addi r3, r3, banti@l /* 0x8112C968@l */
/* 80377228  38 63 04 3C */	addi r3, r3, 0x43c
/* 8037722C  48 09 00 09 */	bl lbRTC_TimeCopy
/* 80377230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80377234  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80377238  7C 08 03 A6 */	mtlr r0
/* 8037723C  38 21 00 10 */	addi r1, r1, 0x10
/* 80377240  4E 80 00 20 */	blr 
