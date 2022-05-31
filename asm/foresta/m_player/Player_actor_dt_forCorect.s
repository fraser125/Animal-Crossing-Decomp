lbl_804D6ADC:
/* 804D6ADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D6AE0  7C 08 02 A6 */	mflr r0
/* 804D6AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D6AE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D6AEC  7C 9F 23 78 */	mr r31, r4
/* 804D6AF0  93 C1 00 08 */	stw r30, 8(r1)
/* 804D6AF4  7C 7E 1B 78 */	mr r30, r3
/* 804D6AF8  7F E3 FB 78 */	mr r3, r31
/* 804D6AFC  38 9E 10 10 */	addi r4, r30, 0x1010
/* 804D6B00  4B EB DB 69 */	bl ClObjPipe_dt
/* 804D6B04  7F E3 FB 78 */	mr r3, r31
/* 804D6B08  38 9E 0F 54 */	addi r4, r30, 0xf54
/* 804D6B0C  4B EB DE 69 */	bl ClObjTris_dt_nzf
/* 804D6B10  7F E3 FB 78 */	mr r3, r31
/* 804D6B14  38 9E 0F AC */	addi r4, r30, 0xfac
/* 804D6B18  4B EB DE 5D */	bl ClObjTris_dt_nzf
/* 804D6B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6B20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D6B24  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D6B28  7C 08 03 A6 */	mtlr r0
/* 804D6B2C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D6B30  4E 80 00 20 */	blr 
