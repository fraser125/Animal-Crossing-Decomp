lbl_80574920:
/* 80574920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80574924  7C 08 02 A6 */	mflr r0
/* 80574928  2C 04 00 01 */	cmpwi r4, 1
/* 8057492C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80574930  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80574934  7C 7F 1B 78 */	mr r31, r3
/* 80574938  40 82 00 24 */	bne lbl_8057495C
/* 8057493C  88 1F 09 97 */	lbz r0, 0x997(r31)
/* 80574940  28 00 00 00 */	cmplwi r0, 0
/* 80574944  40 82 00 34 */	bne lbl_80574978
/* 80574948  38 60 00 47 */	li r3, 0x47
/* 8057494C  48 0B 95 B9 */	bl sAdo_SysLevStart
/* 80574950  38 00 00 01 */	li r0, 1
/* 80574954  98 1F 09 97 */	stb r0, 0x997(r31)
/* 80574958  48 00 00 20 */	b lbl_80574978
lbl_8057495C:
/* 8057495C  88 1F 09 97 */	lbz r0, 0x997(r31)
/* 80574960  28 00 00 01 */	cmplwi r0, 1
/* 80574964  40 82 00 14 */	bne lbl_80574978
/* 80574968  38 60 00 47 */	li r3, 0x47
/* 8057496C  48 0B 95 B9 */	bl sAdo_SysLevStop
/* 80574970  38 00 00 00 */	li r0, 0
/* 80574974  98 1F 09 97 */	stb r0, 0x997(r31)
lbl_80574978:
/* 80574978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057497C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80574980  7C 08 03 A6 */	mtlr r0
/* 80574984  38 21 00 10 */	addi r1, r1, 0x10
/* 80574988  4E 80 00 20 */	blr 
