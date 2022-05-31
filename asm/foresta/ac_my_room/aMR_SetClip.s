lbl_80472714:
/* 80472714  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80472718  7C 08 02 A6 */	mflr r0
/* 8047271C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80472720  39 61 00 20 */	addi r11, r1, 0x20
/* 80472724  4B C2 87 AD */	bl func_8009AED0
/* 80472728  3C 80 80 48 */	lis r4, aMR_JudgeBreedNewFurniture@ha /* 0x8047B4A0@ha */
/* 8047272C  90 63 02 E8 */	stw r3, 0x2e8(r3)
/* 80472730  38 04 B4 A0 */	addi r0, r4, aMR_JudgeBreedNewFurniture@l /* 0x8047B4A0@l */
/* 80472734  3C 80 80 48 */	lis r4, aMR_SearchPickupFurniture@ha /* 0x8047AD48@ha */
/* 80472738  90 03 02 EC */	stw r0, 0x2ec(r3)
/* 8047273C  38 04 AD 48 */	addi r0, r4, aMR_SearchPickupFurniture@l /* 0x8047AD48@l */
/* 80472740  3C A0 80 48 */	lis r5, aMR_Furniture2ItemBag@ha /* 0x8047B254@ha */
/* 80472744  3C 80 80 48 */	lis r4, aMR_JudgePlayerAction@ha /* 0x8047D924@ha */
/* 80472748  90 03 02 F0 */	stw r0, 0x2f0(r3)
/* 8047274C  38 05 B2 54 */	addi r0, r5, aMR_Furniture2ItemBag@l /* 0x8047B254@l */
/* 80472750  3C C0 80 48 */	lis r6, aMR_PlayerMoveFurniture@ha /* 0x8047DE90@ha */
/* 80472754  3C A0 80 48 */	lis r5, aMR_ftrID2Wpos@ha /* 0x8047DED0@ha */
/* 80472758  90 03 02 F4 */	stw r0, 0x2f4(r3)
/* 8047275C  38 04 D9 24 */	addi r0, r4, aMR_JudgePlayerAction@l /* 0x8047D924@l */
/* 80472760  3C 80 80 48 */	lis r4, aMR_UnitNum2FtrItemNoFtrID@ha /* 0x8047DF40@ha */
/* 80472764  3D 20 80 48 */	lis r9, aMR_FtrID2ExtinguishFurniture@ha /* 0x8047E074@ha */
/* 80472768  90 03 02 F8 */	stw r0, 0x2f8(r3)
/* 8047276C  38 06 DE 90 */	addi r0, r6, aMR_PlayerMoveFurniture@l /* 0x8047DE90@l */
/* 80472770  3D 00 80 47 */	lis r8, aMR_RedmaFtrBank@ha /* 0x80473658@ha */
/* 80472774  3C E0 80 48 */	lis r7, aMR_ReserveFurniture@ha /* 0x8047A9B8@ha */
/* 80472778  90 03 02 FC */	stw r0, 0x2fc(r3)
/* 8047277C  38 05 DE D0 */	addi r0, r5, aMR_ftrID2Wpos@l /* 0x8047DED0@l */
/* 80472780  3C C0 80 47 */	lis r6, aMR_CountFriendFurniture@ha /* 0x80470BD8@ha */
/* 80472784  3C A0 80 48 */	lis r5, aMR_JudgePlace2ndLayer@ha /* 0x8047E19C@ha */
/* 80472788  90 03 03 00 */	stw r0, 0x300(r3)
/* 8047278C  38 04 DF 40 */	addi r0, r4, aMR_UnitNum2FtrItemNoFtrID@l /* 0x8047DF40@l */
/* 80472790  3C 80 80 48 */	lis r4, aMR_OpenCloseCommonMove@ha /* 0x8047E2C8@ha */
/* 80472794  3F 80 80 48 */	lis r28, aMR_GetBedAction@ha /* 0x80481828@ha */
/* 80472798  90 03 03 04 */	stw r0, 0x304(r3)
/* 8047279C  38 09 E0 74 */	addi r0, r9, aMR_FtrID2ExtinguishFurniture@l /* 0x8047E074@l */
/* 804727A0  3F A0 80 48 */	lis r29, aMR_MiniDiskCommonMove@ha /* 0x8047E520@ha */
/* 804727A4  3F C0 80 47 */	lis r30, aMR_FamicomEmuCommonMove@ha /* 0x804738CC@ha */
/* 804727A8  90 03 03 08 */	stw r0, 0x308(r3)
/* 804727AC  38 08 36 58 */	addi r0, r8, aMR_RedmaFtrBank@l /* 0x80473658@l */
/* 804727B0  3F E0 80 47 */	lis r31, aMR_SetLeaf@ha /* 0x804734D8@ha */
/* 804727B4  3D 80 80 47 */	lis r12, aMR_Ftr2Leaf@ha /* 0x804734A4@ha */
/* 804727B8  90 03 03 0C */	stw r0, 0x30c(r3)
/* 804727BC  38 07 A9 B8 */	addi r0, r7, aMR_ReserveFurniture@l /* 0x8047A9B8@l */
/* 804727C0  3D 60 80 47 */	lis r11, aMR_LeafStartPos@ha /* 0x80473444@ha */
/* 804727C4  3D 40 80 47 */	lis r10, aMR_PickupFtrLayer@ha /* 0x80473410@ha */
/* 804727C8  90 03 03 10 */	stw r0, 0x310(r3)
/* 804727CC  38 06 0B D8 */	addi r0, r6, aMR_CountFriendFurniture@l /* 0x80470BD8@l */
/* 804727D0  3D 20 80 47 */	lis r9, aMR_LeafPickuped@ha /* 0x804733E0@ha */
/* 804727D4  3D 00 80 47 */	lis r8, aMR_FtrNo2BankAddress@ha /* 0x80470DD0@ha */
/* 804727D8  90 03 03 14 */	stw r0, 0x314(r3)
/* 804727DC  38 05 E1 9C */	addi r0, r5, aMR_JudgePlace2ndLayer@l /* 0x8047E19C@l */
/* 804727E0  3C E0 80 47 */	lis r7, aMR_CallSitDownOngenPosSE@ha /* 0x80473928@ha */
/* 804727E4  3C C0 80 47 */	lis r6, aMR_SoundMelody@ha /* 0x80477790@ha */
/* 804727E8  90 03 03 18 */	stw r0, 0x318(r3)
/* 804727EC  38 04 E2 C8 */	addi r0, r4, aMR_OpenCloseCommonMove@l /* 0x8047E2C8@l */
/* 804727F0  3C A0 80 47 */	lis r5, aMR_CheckDannaKill@ha /* 0x80473A14@ha */
/* 804727F4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804727F8  90 03 03 1C */	stw r0, 0x31c(r3)
/* 804727FC  38 1C 18 28 */	addi r0, r28, aMR_GetBedAction@l /* 0x80481828@l */
/* 80472800  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80472804  3B BD E5 20 */	addi r29, r29, aMR_MiniDiskCommonMove@l /* 0x8047E520@l */
/* 80472808  90 03 03 20 */	stw r0, 0x320(r3)
/* 8047280C  3B DE 38 CC */	addi r30, r30, aMR_FamicomEmuCommonMove@l /* 0x804738CC@l */
/* 80472810  38 1F 34 D8 */	addi r0, r31, aMR_SetLeaf@l /* 0x804734D8@l */
/* 80472814  3B EC 34 A4 */	addi r31, r12, aMR_Ftr2Leaf@l /* 0x804734A4@l */
/* 80472818  93 A3 03 24 */	stw r29, 0x324(r3)
/* 8047281C  39 8B 34 44 */	addi r12, r11, aMR_LeafStartPos@l /* 0x80473444@l */
/* 80472820  39 6A 34 10 */	addi r11, r10, aMR_PickupFtrLayer@l /* 0x80473410@l */
/* 80472824  39 49 33 E0 */	addi r10, r9, aMR_LeafPickuped@l /* 0x804733E0@l */
/* 80472828  93 C3 03 3C */	stw r30, 0x33c(r3)
/* 8047282C  39 28 0D D0 */	addi r9, r8, aMR_FtrNo2BankAddress@l /* 0x80470DD0@l */
/* 80472830  39 07 39 28 */	addi r8, r7, aMR_CallSitDownOngenPosSE@l /* 0x80473928@l */
/* 80472834  38 E3 04 A8 */	addi r7, r3, 0x4a8
/* 80472838  90 03 03 28 */	stw r0, 0x328(r3)
/* 8047283C  38 C6 77 90 */	addi r6, r6, aMR_SoundMelody@l /* 0x80477790@l */
/* 80472840  38 A5 3A 14 */	addi r5, r5, aMR_CheckDannaKill@l /* 0x80473A14@l */
/* 80472844  38 03 02 E8 */	addi r0, r3, 0x2e8
/* 80472848  93 E3 03 2C */	stw r31, 0x32c(r3)
/* 8047284C  3C 84 00 02 */	addis r4, r4, 2
/* 80472850  91 83 03 30 */	stw r12, 0x330(r3)
/* 80472854  91 63 03 34 */	stw r11, 0x334(r3)
/* 80472858  91 43 03 38 */	stw r10, 0x338(r3)
/* 8047285C  91 23 03 40 */	stw r9, 0x340(r3)
/* 80472860  91 03 03 44 */	stw r8, 0x344(r3)
/* 80472864  90 E3 03 48 */	stw r7, 0x348(r3)
/* 80472868  90 C3 03 4C */	stw r6, 0x34c(r3)
/* 8047286C  90 A3 03 50 */	stw r5, 0x350(r3)
/* 80472870  90 04 60 8C */	stw r0, 0x608c(r4)
/* 80472874  39 61 00 20 */	addi r11, r1, 0x20
/* 80472878  4B C2 86 A5 */	bl func_8009AF1C
/* 8047287C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80472880  7C 08 03 A6 */	mtlr r0
/* 80472884  38 21 00 20 */	addi r1, r1, 0x20
/* 80472888  4E 80 00 20 */	blr 
