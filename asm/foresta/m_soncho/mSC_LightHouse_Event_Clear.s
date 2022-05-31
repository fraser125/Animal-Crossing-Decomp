lbl_803ED908:
/* 803ED908  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ED90C  7C 08 02 A6 */	mflr r0
/* 803ED910  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803ED914  2C 03 FF FF */	cmpwi r3, -1
/* 803ED918  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ED91C  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803ED920  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803ED924  3F E4 00 02 */	addis r31, r4, 2
/* 803ED928  40 82 00 08 */	bne lbl_803ED930
/* 803ED92C  88 7F 60 03 */	lbz r3, 0x6003(r31)
lbl_803ED930:
/* 803ED930  2C 03 00 04 */	cmpwi r3, 4
/* 803ED934  40 80 00 38 */	bge lbl_803ED96C
/* 803ED938  38 00 00 01 */	li r0, 1
/* 803ED93C  88 9F 41 72 */	lbz r4, 0x4172(r31)
/* 803ED940  7C 00 18 30 */	slw r0, r0, r3
/* 803ED944  7C 80 03 78 */	or r0, r4, r0
/* 803ED948  98 1F 41 72 */	stb r0, 0x4172(r31)
/* 803ED94C  4B FF FE A5 */	bl mSC_LightHouse_Event_Check
/* 803ED950  2C 03 00 02 */	cmpwi r3, 2
/* 803ED954  41 82 00 0C */	beq lbl_803ED960
/* 803ED958  2C 03 00 04 */	cmpwi r3, 4
/* 803ED95C  40 82 00 10 */	bne lbl_803ED96C
lbl_803ED960:
/* 803ED960  88 1F 41 72 */	lbz r0, 0x4172(r31)
/* 803ED964  60 00 00 0F */	ori r0, r0, 0xf
/* 803ED968  98 1F 41 72 */	stb r0, 0x4172(r31)
lbl_803ED96C:
/* 803ED96C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ED970  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ED974  7C 08 03 A6 */	mtlr r0
/* 803ED978  38 21 00 10 */	addi r1, r1, 0x10
/* 803ED97C  4E 80 00 20 */	blr 
