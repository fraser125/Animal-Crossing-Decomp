lbl_804AC488:
/* 804AC488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AC48C  7C 08 02 A6 */	mflr r0
/* 804AC490  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804AC494  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AC498  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AC49C  7C 7F 1B 78 */	mr r31, r3
/* 804AC4A0  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 804AC4A4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 804AC4A8  2C 00 00 10 */	cmpwi r0, 0x10
/* 804AC4AC  41 82 00 58 */	beq lbl_804AC504
/* 804AC4B0  40 80 00 10 */	bge lbl_804AC4C0
/* 804AC4B4  2C 00 00 0F */	cmpwi r0, 0xf
/* 804AC4B8  40 80 00 14 */	bge lbl_804AC4CC
/* 804AC4BC  48 00 00 80 */	b lbl_804AC53C
lbl_804AC4C0:
/* 804AC4C0  2C 00 00 31 */	cmpwi r0, 0x31
/* 804AC4C4  41 82 00 08 */	beq lbl_804AC4CC
/* 804AC4C8  48 00 00 74 */	b lbl_804AC53C
lbl_804AC4CC:
/* 804AC4CC  3C 80 80 4B */	lis r4, aTrainWindow_NoDraw@ha /* 0x804ACD0C@ha */
/* 804AC4D0  3C 60 80 64 */	lis r3, data_80645EBC@ha /* 0x80645EBC@ha */
/* 804AC4D4  38 84 CD 0C */	addi r4, r4, aTrainWindow_NoDraw@l /* 0x804ACD0C@l */
/* 804AC4D8  38 00 00 00 */	li r0, 0
/* 804AC4DC  90 9F 01 74 */	stw r4, 0x174(r31)
/* 804AC4E0  C0 03 5E BC */	lfs f0, data_80645EBC@l(r3)  /* 0x80645EBC@l */
/* 804AC4E4  90 1F 01 84 */	stw r0, 0x184(r31)
/* 804AC4E8  90 1F 01 88 */	stw r0, 0x188(r31)
/* 804AC4EC  90 1F 01 8C */	stw r0, 0x18c(r31)
/* 804AC4F0  90 1F 01 90 */	stw r0, 0x190(r31)
/* 804AC4F4  90 1F 01 94 */	stw r0, 0x194(r31)
/* 804AC4F8  90 1F 01 98 */	stw r0, 0x198(r31)
/* 804AC4FC  D0 1F 01 A8 */	stfs f0, 0x1a8(r31)
/* 804AC500  48 00 00 3C */	b lbl_804AC53C
lbl_804AC504:
/* 804AC504  3C 80 80 4B */	lis r4, aTrainWindow_DrawGoneOutTunnel@ha /* 0x804ACA60@ha */
/* 804AC508  3C 60 80 64 */	lis r3, lit_459@ha /* 0x80645EC0@ha */
/* 804AC50C  38 04 CA 60 */	addi r0, r4, aTrainWindow_DrawGoneOutTunnel@l /* 0x804ACA60@l */
/* 804AC510  C0 03 5E C0 */	lfs f0, lit_459@l(r3)  /* 0x80645EC0@l */
/* 804AC514  90 1F 01 74 */	stw r0, 0x174(r31)
/* 804AC518  38 80 03 E8 */	li r4, 0x3e8
/* 804AC51C  38 00 00 00 */	li r0, 0
/* 804AC520  90 9F 01 84 */	stw r4, 0x184(r31)
/* 804AC524  90 1F 01 88 */	stw r0, 0x188(r31)
/* 804AC528  90 9F 01 8C */	stw r4, 0x18c(r31)
/* 804AC52C  90 1F 01 90 */	stw r0, 0x190(r31)
/* 804AC530  90 1F 01 94 */	stw r0, 0x194(r31)
/* 804AC534  90 1F 01 98 */	stw r0, 0x198(r31)
/* 804AC538  D0 1F 01 A8 */	stfs f0, 0x1a8(r31)
lbl_804AC53C:
/* 804AC53C  4B FF FE ED */	bl func_804AC428
/* 804AC540  B0 7F 01 78 */	sth r3, 0x178(r31)
/* 804AC544  3C A0 80 69 */	lis r5, data_8068F500@ha /* 0x8068F500@ha */
/* 804AC548  3C 60 80 64 */	lis r3, lit_460@ha /* 0x80645EC4@ha */
/* 804AC54C  38 80 01 F4 */	li r4, 0x1f4
/* 804AC550  A8 DF 01 78 */	lha r6, 0x178(r31)
/* 804AC554  38 A5 F5 00 */	addi r5, r5, data_8068F500@l /* 0x8068F500@l */
/* 804AC558  C0 03 5E C4 */	lfs f0, lit_460@l(r3)  /* 0x80645EC4@l */
/* 804AC55C  38 00 00 00 */	li r0, 0
/* 804AC560  54 C6 28 34 */	slwi r6, r6, 5
/* 804AC564  7C 65 32 14 */	add r3, r5, r6
/* 804AC568  90 7F 01 80 */	stw r3, 0x180(r31)
/* 804AC56C  90 9F 01 9C */	stw r4, 0x19c(r31)
/* 804AC570  90 1F 01 A0 */	stw r0, 0x1a0(r31)
/* 804AC574  B0 1F 01 AC */	sth r0, 0x1ac(r31)
/* 804AC578  B0 1F 01 AE */	sth r0, 0x1ae(r31)
/* 804AC57C  B0 1F 01 B0 */	sth r0, 0x1b0(r31)
/* 804AC580  D0 1F 01 A4 */	stfs f0, 0x1a4(r31)
/* 804AC584  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AC588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AC58C  7C 08 03 A6 */	mtlr r0
/* 804AC590  38 21 00 10 */	addi r1, r1, 0x10
/* 804AC594  4E 80 00 20 */	blr 
