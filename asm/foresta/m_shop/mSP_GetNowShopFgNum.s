lbl_803EA2DC:
/* 803EA2DC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EA2E0  38 A3 85 38 */	addi r5, r3, common_data@l /* 0x81138538@l */
/* 803EA2E4  80 65 00 14 */	lwz r3, 0x14(r5)
/* 803EA2E8  3C 85 00 02 */	addis r4, r5, 2
/* 803EA2EC  80 84 04 C0 */	lwz r4, 0x4c0(r4)
/* 803EA2F0  38 03 FF F7 */	addi r0, r3, -9
/* 803EA2F4  28 00 00 14 */	cmplwi r0, 0x14
/* 803EA2F8  41 81 02 AC */	bgt lbl_803EA5A4
/* 803EA2FC  3C 60 80 66 */	lis r3, lit_1341@ha /* 0x8065D8BC@ha */
/* 803EA300  54 00 10 3A */	slwi r0, r0, 2
/* 803EA304  38 63 D8 BC */	addi r3, r3, lit_1341@l /* 0x8065D8BC@l */
/* 803EA308  7C 03 00 2E */	lwzx r0, r3, r0
/* 803EA30C  7C 09 03 A6 */	mtctr r0
/* 803EA310  4E 80 04 20 */	bctr 
lbl_803EA314:
/* 803EA314  3C 65 00 03 */	addis r3, r5, 3
/* 803EA318  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 803EA31C  2C 00 00 01 */	cmpwi r0, 1
/* 803EA320  40 82 00 7C */	bne lbl_803EA39C
/* 803EA324  2C 04 00 00 */	cmpwi r4, 0
/* 803EA328  40 82 00 1C */	bne lbl_803EA344
/* 803EA32C  3C 60 81 17 */	lis r3, data_81171440@ha /* 0x81171440@ha */
/* 803EA330  38 00 00 00 */	li r0, 0
/* 803EA334  38 83 14 40 */	addi r4, r3, data_81171440@l /* 0x81171440@l */
/* 803EA338  38 60 01 63 */	li r3, 0x163
/* 803EA33C  90 04 00 00 */	stw r0, 0(r4)
/* 803EA340  4E 80 00 20 */	blr 
lbl_803EA344:
/* 803EA344  2C 04 00 02 */	cmpwi r4, 2
/* 803EA348  40 82 00 1C */	bne lbl_803EA364
/* 803EA34C  3C 60 81 17 */	lis r3, data_81171440@ha /* 0x81171440@ha */
/* 803EA350  38 00 00 02 */	li r0, 2
/* 803EA354  38 83 14 40 */	addi r4, r3, data_81171440@l /* 0x81171440@l */
/* 803EA358  38 60 01 66 */	li r3, 0x166
/* 803EA35C  90 04 00 00 */	stw r0, 0(r4)
/* 803EA360  4E 80 00 20 */	blr 
lbl_803EA364:
/* 803EA364  2C 04 00 04 */	cmpwi r4, 4
/* 803EA368  40 82 00 1C */	bne lbl_803EA384
/* 803EA36C  3C 60 81 17 */	lis r3, data_81171440@ha /* 0x81171440@ha */
/* 803EA370  38 00 00 04 */	li r0, 4
/* 803EA374  38 83 14 40 */	addi r4, r3, data_81171440@l /* 0x81171440@l */
/* 803EA378  38 60 01 65 */	li r3, 0x165
/* 803EA37C  90 04 00 00 */	stw r0, 0(r4)
/* 803EA380  4E 80 00 20 */	blr 
lbl_803EA384:
/* 803EA384  3C 60 81 17 */	lis r3, data_81171440@ha /* 0x81171440@ha */
/* 803EA388  38 00 00 03 */	li r0, 3
/* 803EA38C  38 83 14 40 */	addi r4, r3, data_81171440@l /* 0x81171440@l */
/* 803EA390  38 60 01 64 */	li r3, 0x164
/* 803EA394  90 04 00 00 */	stw r0, 0(r4)
/* 803EA398  4E 80 00 20 */	blr 
lbl_803EA39C:
/* 803EA39C  2C 00 00 03 */	cmpwi r0, 3
/* 803EA3A0  38 60 00 22 */	li r3, 0x22
/* 803EA3A4  4C 82 00 20 */	bnelr 
/* 803EA3A8  38 60 01 4D */	li r3, 0x14d
/* 803EA3AC  4E 80 00 20 */	blr 
lbl_803EA3B0:
/* 803EA3B0  3C 65 00 03 */	addis r3, r5, 3
/* 803EA3B4  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 803EA3B8  2C 00 00 01 */	cmpwi r0, 1
/* 803EA3BC  40 82 00 7C */	bne lbl_803EA438
/* 803EA3C0  2C 04 00 00 */	cmpwi r4, 0
/* 803EA3C4  40 82 00 1C */	bne lbl_803EA3E0
/* 803EA3C8  3C 60 81 17 */	lis r3, data_81171440@ha /* 0x81171440@ha */
/* 803EA3CC  38 00 00 00 */	li r0, 0
/* 803EA3D0  38 83 14 40 */	addi r4, r3, data_81171440@l /* 0x81171440@l */
/* 803EA3D4  38 60 01 67 */	li r3, 0x167
/* 803EA3D8  90 04 00 00 */	stw r0, 0(r4)
/* 803EA3DC  4E 80 00 20 */	blr 
lbl_803EA3E0:
/* 803EA3E0  2C 04 00 02 */	cmpwi r4, 2
/* 803EA3E4  40 82 00 1C */	bne lbl_803EA400
/* 803EA3E8  3C 60 81 17 */	lis r3, data_81171440@ha /* 0x81171440@ha */
/* 803EA3EC  38 00 00 02 */	li r0, 2
/* 803EA3F0  38 83 14 40 */	addi r4, r3, data_81171440@l /* 0x81171440@l */
/* 803EA3F4  38 60 01 6A */	li r3, 0x16a
/* 803EA3F8  90 04 00 00 */	stw r0, 0(r4)
/* 803EA3FC  4E 80 00 20 */	blr 
lbl_803EA400:
/* 803EA400  2C 04 00 04 */	cmpwi r4, 4
/* 803EA404  40 82 00 1C */	bne lbl_803EA420
/* 803EA408  3C 60 81 17 */	lis r3, data_81171440@ha /* 0x81171440@ha */
/* 803EA40C  38 00 00 04 */	li r0, 4
/* 803EA410  38 83 14 40 */	addi r4, r3, data_81171440@l /* 0x81171440@l */
/* 803EA414  38 60 01 69 */	li r3, 0x169
/* 803EA418  90 04 00 00 */	stw r0, 0(r4)
/* 803EA41C  4E 80 00 20 */	blr 
lbl_803EA420:
/* 803EA420  3C 60 81 17 */	lis r3, data_81171440@ha /* 0x81171440@ha */
/* 803EA424  38 00 00 03 */	li r0, 3
/* 803EA428  38 83 14 40 */	addi r4, r3, data_81171440@l /* 0x81171440@l */
/* 803EA42C  38 60 01 68 */	li r3, 0x168
/* 803EA430  90 04 00 00 */	stw r0, 0(r4)
/* 803EA434  4E 80 00 20 */	blr 
lbl_803EA438:
/* 803EA438  2C 00 00 03 */	cmpwi r0, 3
/* 803EA43C  38 60 00 23 */	li r3, 0x23
/* 803EA440  4C 82 00 20 */	bnelr 
/* 803EA444  38 60 01 4E */	li r3, 0x14e
/* 803EA448  4E 80 00 20 */	blr 
lbl_803EA44C:
/* 803EA44C  3C 65 00 03 */	addis r3, r5, 3
/* 803EA450  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 803EA454  2C 00 00 01 */	cmpwi r0, 1
/* 803EA458  40 82 00 7C */	bne lbl_803EA4D4
/* 803EA45C  2C 04 00 00 */	cmpwi r4, 0
/* 803EA460  40 82 00 1C */	bne lbl_803EA47C
/* 803EA464  3C 60 81 17 */	lis r3, data_81171440@ha /* 0x81171440@ha */
/* 803EA468  38 00 00 00 */	li r0, 0
/* 803EA46C  38 83 14 40 */	addi r4, r3, data_81171440@l /* 0x81171440@l */
/* 803EA470  38 60 01 6B */	li r3, 0x16b
/* 803EA474  90 04 00 00 */	stw r0, 0(r4)
/* 803EA478  4E 80 00 20 */	blr 
lbl_803EA47C:
/* 803EA47C  2C 04 00 02 */	cmpwi r4, 2
/* 803EA480  40 82 00 1C */	bne lbl_803EA49C
/* 803EA484  3C 60 81 17 */	lis r3, data_81171440@ha /* 0x81171440@ha */
/* 803EA488  38 00 00 02 */	li r0, 2
/* 803EA48C  38 83 14 40 */	addi r4, r3, data_81171440@l /* 0x81171440@l */
/* 803EA490  38 60 01 6E */	li r3, 0x16e
/* 803EA494  90 04 00 00 */	stw r0, 0(r4)
/* 803EA498  4E 80 00 20 */	blr 
lbl_803EA49C:
/* 803EA49C  2C 04 00 04 */	cmpwi r4, 4
/* 803EA4A0  40 82 00 1C */	bne lbl_803EA4BC
/* 803EA4A4  3C 60 81 17 */	lis r3, data_81171440@ha /* 0x81171440@ha */
/* 803EA4A8  38 00 00 04 */	li r0, 4
/* 803EA4AC  38 83 14 40 */	addi r4, r3, data_81171440@l /* 0x81171440@l */
/* 803EA4B0  38 60 01 6D */	li r3, 0x16d
/* 803EA4B4  90 04 00 00 */	stw r0, 0(r4)
/* 803EA4B8  4E 80 00 20 */	blr 
lbl_803EA4BC:
/* 803EA4BC  3C 60 81 17 */	lis r3, data_81171440@ha /* 0x81171440@ha */
/* 803EA4C0  38 00 00 03 */	li r0, 3
/* 803EA4C4  38 83 14 40 */	addi r4, r3, data_81171440@l /* 0x81171440@l */
/* 803EA4C8  38 60 01 6C */	li r3, 0x16c
/* 803EA4CC  90 04 00 00 */	stw r0, 0(r4)
/* 803EA4D0  4E 80 00 20 */	blr 
lbl_803EA4D4:
/* 803EA4D4  2C 00 00 03 */	cmpwi r0, 3
/* 803EA4D8  38 60 00 24 */	li r3, 0x24
/* 803EA4DC  4C 82 00 20 */	bnelr 
/* 803EA4E0  38 60 01 4F */	li r3, 0x14f
/* 803EA4E4  4E 80 00 20 */	blr 
lbl_803EA4E8:
/* 803EA4E8  3C 65 00 03 */	addis r3, r5, 3
/* 803EA4EC  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 803EA4F0  2C 00 00 01 */	cmpwi r0, 1
/* 803EA4F4  40 82 00 0C */	bne lbl_803EA500
/* 803EA4F8  38 60 01 6F */	li r3, 0x16f
/* 803EA4FC  4E 80 00 20 */	blr 
lbl_803EA500:
/* 803EA500  2C 00 00 03 */	cmpwi r0, 3
/* 803EA504  38 60 00 25 */	li r3, 0x25
/* 803EA508  4C 82 00 20 */	bnelr 
/* 803EA50C  38 60 01 50 */	li r3, 0x150
/* 803EA510  4E 80 00 20 */	blr 
lbl_803EA514:
/* 803EA514  3C 65 00 03 */	addis r3, r5, 3
/* 803EA518  80 03 88 9C */	lwz r0, -0x7764(r3)
/* 803EA51C  2C 00 00 01 */	cmpwi r0, 1
/* 803EA520  40 82 00 7C */	bne lbl_803EA59C
/* 803EA524  2C 04 00 00 */	cmpwi r4, 0
/* 803EA528  40 82 00 1C */	bne lbl_803EA544
/* 803EA52C  3C 60 81 17 */	lis r3, data_81171440@ha /* 0x81171440@ha */
/* 803EA530  38 00 00 00 */	li r0, 0
/* 803EA534  38 83 14 40 */	addi r4, r3, data_81171440@l /* 0x81171440@l */
/* 803EA538  38 60 01 70 */	li r3, 0x170
/* 803EA53C  90 04 00 00 */	stw r0, 0(r4)
/* 803EA540  4E 80 00 20 */	blr 
lbl_803EA544:
/* 803EA544  2C 04 00 02 */	cmpwi r4, 2
/* 803EA548  40 82 00 1C */	bne lbl_803EA564
/* 803EA54C  3C 60 81 17 */	lis r3, data_81171440@ha /* 0x81171440@ha */
/* 803EA550  38 00 00 02 */	li r0, 2
/* 803EA554  38 83 14 40 */	addi r4, r3, data_81171440@l /* 0x81171440@l */
/* 803EA558  38 60 01 73 */	li r3, 0x173
/* 803EA55C  90 04 00 00 */	stw r0, 0(r4)
/* 803EA560  4E 80 00 20 */	blr 
lbl_803EA564:
/* 803EA564  2C 04 00 04 */	cmpwi r4, 4
/* 803EA568  40 82 00 1C */	bne lbl_803EA584
/* 803EA56C  3C 60 81 17 */	lis r3, data_81171440@ha /* 0x81171440@ha */
/* 803EA570  38 00 00 04 */	li r0, 4
/* 803EA574  38 83 14 40 */	addi r4, r3, data_81171440@l /* 0x81171440@l */
/* 803EA578  38 60 01 72 */	li r3, 0x172
/* 803EA57C  90 04 00 00 */	stw r0, 0(r4)
/* 803EA580  4E 80 00 20 */	blr 
lbl_803EA584:
/* 803EA584  3C 60 81 17 */	lis r3, data_81171440@ha /* 0x81171440@ha */
/* 803EA588  38 00 00 03 */	li r0, 3
/* 803EA58C  38 83 14 40 */	addi r4, r3, data_81171440@l /* 0x81171440@l */
/* 803EA590  38 60 01 71 */	li r3, 0x171
/* 803EA594  90 04 00 00 */	stw r0, 0(r4)
/* 803EA598  4E 80 00 20 */	blr 
lbl_803EA59C:
/* 803EA59C  38 60 00 26 */	li r3, 0x26
/* 803EA5A0  4E 80 00 20 */	blr 
lbl_803EA5A4:
/* 803EA5A4  38 60 00 25 */	li r3, 0x25
/* 803EA5A8  4E 80 00 20 */	blr 
