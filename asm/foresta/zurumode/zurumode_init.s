lbl_8040EE70:
/* 8040EE70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8040EE74  7C 08 02 A6 */	mflr r0
/* 8040EE78  3C 60 81 1D */	lis r3, zuruKeyCheck@ha /* 0x811CB7AC@ha */
/* 8040EE7C  3C 80 81 1D */	lis r4, data_811CB7A8@ha /* 0x811CB7A8@ha */
/* 8040EE80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8040EE84  38 00 00 00 */	li r0, 0
/* 8040EE88  38 63 B7 AC */	addi r3, r3, zuruKeyCheck@l /* 0x811CB7AC@l */
/* 8040EE8C  90 04 B7 A8 */	stw r0, data_811CB7A8@l(r4)  /* 0x811CB7A8@l */
/* 8040EE90  4B FF FB C1 */	bl func_8040EA50
/* 8040EE94  3C 60 80 20 */	lis r3, osAppNMIBuffer@ha /* 0x80206F60@ha */
/* 8040EE98  3C A0 81 1D */	lis r5, zuruKeyCheck@ha /* 0x811CB7AC@ha */
/* 8040EE9C  38 63 6F 60 */	addi r3, r3, osAppNMIBuffer@l /* 0x80206F60@l */
/* 8040EEA0  3C 80 80 41 */	lis r4, zurumode_callback@ha /* 0x8040ED8C@ha */
/* 8040EEA4  80 C3 00 3C */	lwz r6, 0x3c(r3)
/* 8040EEA8  3C 60 81 1C */	lis r3, padmgr_class@ha /* 0x811C7178@ha */
/* 8040EEAC  38 63 71 78 */	addi r3, r3, padmgr_class@l /* 0x811C7178@l */
/* 8040EEB0  38 04 ED 8C */	addi r0, r4, zurumode_callback@l /* 0x8040ED8C@l */
/* 8040EEB4  54 C6 07 FE */	clrlwi r6, r6, 0x1f
/* 8040EEB8  38 85 B7 AC */	addi r4, r5, zuruKeyCheck@l /* 0x811CB7AC@l */
/* 8040EEBC  98 C4 00 04 */	stb r6, 4(r4)
/* 8040EEC0  90 03 00 0C */	stw r0, 0xc(r3)
/* 8040EEC4  90 63 00 10 */	stw r3, 0x10(r3)
/* 8040EEC8  4B FF FD F9 */	bl zurumode_update
/* 8040EECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8040EED0  7C 08 03 A6 */	mtlr r0
/* 8040EED4  38 21 00 10 */	addi r1, r1, 0x10
/* 8040EED8  4E 80 00 20 */	blr 
