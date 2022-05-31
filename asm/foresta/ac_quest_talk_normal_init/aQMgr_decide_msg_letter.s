lbl_8049381C:
/* 8049381C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80493820  7C 08 02 A6 */	mflr r0
/* 80493824  90 01 00 24 */	stw r0, 0x24(r1)
/* 80493828  39 61 00 20 */	addi r11, r1, 0x20
/* 8049382C  4B C0 76 A1 */	bl func_8009AECC
/* 80493830  7C 7C 1B 78 */	mr r28, r3
/* 80493834  7C 9D 23 78 */	mr r29, r4
/* 80493838  80 83 01 78 */	lwz r4, 0x178(r3)
/* 8049383C  3B C0 FF FF */	li r30, -1
/* 80493840  38 60 00 06 */	li r3, 6
/* 80493844  80 84 00 00 */	lwz r4, 0(r4)
/* 80493848  80 84 01 7C */	lwz r4, 0x17c(r4)
/* 8049384C  3B 64 00 10 */	addi r27, r4, 0x10
/* 80493850  4B F5 0B 81 */	bl mQst_GetRandom
/* 80493854  3C 80 80 69 */	lis r4, get_mail_proc@ha /* 0x8068B790@ha */
/* 80493858  80 BC 01 7C */	lwz r5, 0x17c(r28)
/* 8049385C  7C 7F 1B 78 */	mr r31, r3
/* 80493860  54 60 10 3A */	slwi r0, r3, 2
/* 80493864  38 64 B7 90 */	addi r3, r4, get_mail_proc@l /* 0x8068B790@l */
/* 80493868  80 C5 00 00 */	lwz r6, 0(r5)
/* 8049386C  7D 83 00 2E */	lwzx r12, r3, r0
/* 80493870  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CECA4@ha */
/* 80493874  38 64 EC A4 */	addi r3, r4, l_normal_info@l /* 0x811CECA4@l */
/* 80493878  38 A0 00 07 */	li r5, 7
/* 8049387C  7F 64 DB 78 */	mr r4, r27
/* 80493880  7D 89 03 A6 */	mtctr r12
/* 80493884  4E 80 04 21 */	bctrl 
/* 80493888  28 03 00 00 */	cmplwi r3, 0
/* 8049388C  40 82 00 34 */	bne lbl_804938C0
/* 80493890  2C 1F 00 00 */	cmpwi r31, 0
/* 80493894  38 00 00 00 */	li r0, 0
/* 80493898  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CECA4@ha */
/* 8049389C  94 04 EC A4 */	stwu r0, l_normal_info@l(r4)  /* 0x811CECA4@l */
/* 804938A0  41 82 00 20 */	beq lbl_804938C0
/* 804938A4  80 DC 01 7C */	lwz r6, 0x17c(r28)
/* 804938A8  7C 83 23 78 */	mr r3, r4
/* 804938AC  7F 64 DB 78 */	mr r4, r27
/* 804938B0  38 A0 00 07 */	li r5, 7
/* 804938B4  80 C6 00 00 */	lwz r6, 0(r6)
/* 804938B8  4B FF E8 61 */	bl aQMgr_get_memory_mail_rnd
/* 804938BC  3B E0 00 00 */	li r31, 0
lbl_804938C0:
/* 804938C0  28 03 00 00 */	cmplwi r3, 0
/* 804938C4  41 82 00 34 */	beq lbl_804938F8
/* 804938C8  3C 80 81 1D */	lis r4, l_normal_info@ha /* 0x811CECA4@ha */
/* 804938CC  84 C4 EC A4 */	lwzu r6, l_normal_info@l(r4)  /* 0x811CECA4@l */
/* 804938D0  3C A0 80 69 */	lis r5, l_normal2_letter@ha /* 0x8068B558@ha */
/* 804938D4  57 A0 10 3A */	slwi r0, r29, 2
/* 804938D8  38 A5 B5 58 */	addi r5, r5, l_normal2_letter@l /* 0x8068B558@l */
/* 804938DC  28 06 00 00 */	cmplwi r6, 0
/* 804938E0  7C 05 00 2E */	lwzx r0, r5, r0
/* 804938E4  90 64 00 04 */	stw r3, 4(r4)
/* 804938E8  7F C0 FA 14 */	add r30, r0, r31
/* 804938EC  41 82 00 0C */	beq lbl_804938F8
/* 804938F0  7C C3 33 78 */	mr r3, r6
/* 804938F4  4B FF F0 0D */	bl aQMgr_set_free_str_memory
lbl_804938F8:
/* 804938F8  7F C3 F3 78 */	mr r3, r30
/* 804938FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80493900  4B C0 76 19 */	bl func_8009AF18
/* 80493904  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80493908  7C 08 03 A6 */	mtlr r0
/* 8049390C  38 21 00 20 */	addi r1, r1, 0x20
/* 80493910  4E 80 00 20 */	blr 
