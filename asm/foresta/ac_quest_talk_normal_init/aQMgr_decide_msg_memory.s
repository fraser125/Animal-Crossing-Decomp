lbl_80493668:
/* 80493668  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049366C  7C 08 02 A6 */	mflr r0
/* 80493670  90 01 00 34 */	stw r0, 0x34(r1)
/* 80493674  39 61 00 30 */	addi r11, r1, 0x30
/* 80493678  4B C0 78 4D */	bl func_8009AEC4
/* 8049367C  7C 7C 1B 78 */	mr r28, r3
/* 80493680  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80493684  80 63 01 78 */	lwz r3, 0x178(r3)
/* 80493688  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8049368C  3C A5 00 02 */	addis r5, r5, 2
/* 80493690  7C 9D 23 78 */	mr r29, r4
/* 80493694  80 83 00 00 */	lwz r4, 0(r3)
/* 80493698  3B C0 FF FF */	li r30, -1
/* 8049369C  83 45 61 3C */	lwz r26, 0x613c(r5)
/* 804936A0  38 60 00 03 */	li r3, 3
/* 804936A4  80 84 01 7C */	lwz r4, 0x17c(r4)
/* 804936A8  3B 24 00 10 */	addi r25, r4, 0x10
/* 804936AC  4B F5 0D 25 */	bl mQst_GetRandom
/* 804936B0  7C 7B 1B 78 */	mr r27, r3
/* 804936B4  3C 80 80 69 */	lis r4, get_memory_proc@ha /* 0x8068B784@ha */
/* 804936B8  54 60 10 3A */	slwi r0, r3, 2
/* 804936BC  7F 43 D3 78 */	mr r3, r26
/* 804936C0  38 A4 B7 84 */	addi r5, r4, get_memory_proc@l /* 0x8068B784@l */
/* 804936C4  7F 24 CB 78 */	mr r4, r25
/* 804936C8  7D 85 00 2E */	lwzx r12, r5, r0
/* 804936CC  38 A0 00 07 */	li r5, 7
/* 804936D0  7D 89 03 A6 */	mtctr r12
/* 804936D4  4E 80 04 21 */	bctrl 
/* 804936D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 804936DC  41 82 00 44 */	beq lbl_80493720
/* 804936E0  88 1F 00 31 */	lbz r0, 0x31(r31)
/* 804936E4  3C 60 80 69 */	lis r3, l_normal2_memory@ha /* 0x8068B570@ha */
/* 804936E8  57 A4 10 3A */	slwi r4, r29, 2
/* 804936EC  57 7E 08 3C */	slwi r30, r27, 1
/* 804936F0  38 63 B5 70 */	addi r3, r3, l_normal2_memory@l /* 0x8068B570@l */
/* 804936F4  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 804936F8  7C 63 20 2E */	lwzx r3, r3, r4
/* 804936FC  7F DE 1A 14 */	add r30, r30, r3
/* 80493700  40 82 00 0C */	bne lbl_8049370C
/* 80493704  3B DE 00 01 */	addi r30, r30, 1
/* 80493708  48 00 00 B4 */	b lbl_804937BC
lbl_8049370C:
/* 8049370C  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CECA4@ha */
/* 80493710  38 1F 00 32 */	addi r0, r31, 0x32
/* 80493714  38 63 EC A4 */	addi r3, r3, l_normal_info@l /* 0x811CECA4@l */
/* 80493718  90 03 00 04 */	stw r0, 4(r3)
/* 8049371C  48 00 00 A0 */	b lbl_804937BC
lbl_80493720:
/* 80493720  7F 43 D3 78 */	mr r3, r26
/* 80493724  7F 24 CB 78 */	mr r4, r25
/* 80493728  38 A0 00 07 */	li r5, 7
/* 8049372C  4B FF E8 AD */	bl aQMgr_get_memory_rnd
/* 80493730  7C 7F 1B 79 */	or. r31, r3, r3
/* 80493734  41 82 00 40 */	beq lbl_80493774
/* 80493738  88 1F 00 31 */	lbz r0, 0x31(r31)
/* 8049373C  3C 60 80 69 */	lis r3, l_normal2_memory@ha /* 0x8068B570@ha */
/* 80493740  57 A4 10 3A */	slwi r4, r29, 2
/* 80493744  38 63 B5 70 */	addi r3, r3, l_normal2_memory@l /* 0x8068B570@l */
/* 80493748  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 8049374C  7C 63 20 2E */	lwzx r3, r3, r4
/* 80493750  3B C3 00 06 */	addi r30, r3, 6
/* 80493754  40 82 00 0C */	bne lbl_80493760
/* 80493758  3B DE 00 01 */	addi r30, r30, 1
/* 8049375C  48 00 00 60 */	b lbl_804937BC
lbl_80493760:
/* 80493760  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CECA4@ha */
/* 80493764  38 1F 00 32 */	addi r0, r31, 0x32
/* 80493768  38 63 EC A4 */	addi r3, r3, l_normal_info@l /* 0x811CECA4@l */
/* 8049376C  90 03 00 04 */	stw r0, 4(r3)
/* 80493770  48 00 00 4C */	b lbl_804937BC
lbl_80493774:
/* 80493774  7F 43 D3 78 */	mr r3, r26
/* 80493778  7F 24 CB 78 */	mr r4, r25
/* 8049377C  3B E0 00 00 */	li r31, 0
/* 80493780  38 A0 00 07 */	li r5, 7
/* 80493784  4B F3 85 F5 */	bl mNpc_GetAnimalMemoryIdx
/* 80493788  2C 03 FF FF */	cmpwi r3, -1
/* 8049378C  41 82 00 30 */	beq lbl_804937BC
/* 80493790  1C 03 01 38 */	mulli r0, r3, 0x138
/* 80493794  7C 79 02 14 */	add r3, r25, r0
/* 80493798  88 03 00 30 */	lbz r0, 0x30(r3)
/* 8049379C  7C 00 07 74 */	extsb r0, r0
/* 804937A0  2C 00 00 50 */	cmpwi r0, 0x50
/* 804937A4  40 81 00 18 */	ble lbl_804937BC
/* 804937A8  3C 60 80 69 */	lis r3, l_normal2_memory@ha /* 0x8068B570@ha */
/* 804937AC  57 A0 10 3A */	slwi r0, r29, 2
/* 804937B0  38 63 B5 70 */	addi r3, r3, l_normal2_memory@l /* 0x8068B570@l */
/* 804937B4  7C 63 00 2E */	lwzx r3, r3, r0
/* 804937B8  3B C3 00 08 */	addi r30, r3, 8
lbl_804937BC:
/* 804937BC  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CECA4@ha */
/* 804937C0  2C 1E FF FF */	cmpwi r30, -1
/* 804937C4  93 E3 EC A4 */	stw r31, l_normal_info@l(r3)  /* 0x811CECA4@l */
/* 804937C8  40 82 00 28 */	bne lbl_804937F0
/* 804937CC  7F 83 E3 78 */	mr r3, r28
/* 804937D0  7F A4 EB 78 */	mr r4, r29
/* 804937D4  48 00 04 59 */	bl aQMgr_decide_msg_trade
/* 804937D8  38 00 00 00 */	li r0, 0
/* 804937DC  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CECA4@ha */
/* 804937E0  94 04 EC A4 */	stwu r0, l_normal_info@l(r4)  /* 0x811CECA4@l */
/* 804937E4  7C 7E 1B 78 */	mr r30, r3
/* 804937E8  90 04 00 04 */	stw r0, 4(r4)
/* 804937EC  48 00 00 14 */	b lbl_80493800
lbl_804937F0:
/* 804937F0  28 1F 00 00 */	cmplwi r31, 0
/* 804937F4  41 82 00 0C */	beq lbl_80493800
/* 804937F8  7F E3 FB 78 */	mr r3, r31
/* 804937FC  4B FF F1 05 */	bl aQMgr_set_free_str_memory
lbl_80493800:
/* 80493800  7F C3 F3 78 */	mr r3, r30
/* 80493804  39 61 00 30 */	addi r11, r1, 0x30
/* 80493808  4B C0 77 09 */	bl func_8009AF10
/* 8049380C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80493810  7C 08 03 A6 */	mtlr r0
/* 80493814  38 21 00 30 */	addi r1, r1, 0x30
/* 80493818  4E 80 00 20 */	blr 
