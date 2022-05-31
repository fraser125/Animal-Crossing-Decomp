lbl_803C5B50:
/* 803C5B50  2C 05 00 01 */	cmpwi r5, 1
/* 803C5B54  80 84 00 00 */	lwz r4, 0(r4)
/* 803C5B58  40 82 00 60 */	bne lbl_803C5BB8
/* 803C5B5C  81 04 02 F0 */	lwz r8, 0x2f0(r4)
/* 803C5B60  3C E0 FA 00 */	lis r7, 0xFA00 /* 0xFA0000FF@ha */
/* 803C5B64  38 E7 00 FF */	addi r7, r7, 0x00FF /* 0xFA0000FF@l */
/* 803C5B68  3C A0 80 66 */	lis r5, con_kaiwaname_modelT@ha /* 0x8065A0A0@ha */
/* 803C5B6C  38 08 00 08 */	addi r0, r8, 8
/* 803C5B70  3C C0 DE 00 */	lis r6, 0xde00
/* 803C5B74  90 04 02 F0 */	stw r0, 0x2f0(r4)
/* 803C5B78  38 05 A0 A0 */	addi r0, r5, con_kaiwaname_modelT@l /* 0x8065A0A0@l */
/* 803C5B7C  90 E8 00 00 */	stw r7, 0(r8)
/* 803C5B80  88 A3 02 B5 */	lbz r5, 0x2b5(r3)
/* 803C5B84  88 E3 02 B4 */	lbz r7, 0x2b4(r3)
/* 803C5B88  54 A5 82 1E */	rlwinm r5, r5, 0x10, 8, 0xf
/* 803C5B8C  88 63 02 B6 */	lbz r3, 0x2b6(r3)
/* 803C5B90  50 E5 C0 0E */	rlwimi r5, r7, 0x18, 0, 7
/* 803C5B94  50 65 44 2E */	rlwimi r5, r3, 8, 0x10, 0x17
/* 803C5B98  60 A3 00 FF */	ori r3, r5, 0xff
/* 803C5B9C  90 68 00 04 */	stw r3, 4(r8)
/* 803C5BA0  80 A4 02 F0 */	lwz r5, 0x2f0(r4)
/* 803C5BA4  38 65 00 08 */	addi r3, r5, 8
/* 803C5BA8  90 64 02 F0 */	stw r3, 0x2f0(r4)
/* 803C5BAC  90 C5 00 00 */	stw r6, 0(r5)
/* 803C5BB0  90 05 00 04 */	stw r0, 4(r5)
/* 803C5BB4  4E 80 00 20 */	blr 
lbl_803C5BB8:
/* 803C5BB8  81 04 02 D0 */	lwz r8, 0x2d0(r4)
/* 803C5BBC  3C E0 FA 00 */	lis r7, 0xFA00 /* 0xFA0000FF@ha */
/* 803C5BC0  38 E7 00 FF */	addi r7, r7, 0x00FF /* 0xFA0000FF@l */
/* 803C5BC4  3C A0 80 66 */	lis r5, con_kaiwaname_modelT@ha /* 0x8065A0A0@ha */
/* 803C5BC8  38 08 00 08 */	addi r0, r8, 8
/* 803C5BCC  3C C0 DE 00 */	lis r6, 0xde00
/* 803C5BD0  90 04 02 D0 */	stw r0, 0x2d0(r4)
/* 803C5BD4  38 05 A0 A0 */	addi r0, r5, con_kaiwaname_modelT@l /* 0x8065A0A0@l */
/* 803C5BD8  90 E8 00 00 */	stw r7, 0(r8)
/* 803C5BDC  88 A3 02 B5 */	lbz r5, 0x2b5(r3)
/* 803C5BE0  88 E3 02 B4 */	lbz r7, 0x2b4(r3)
/* 803C5BE4  54 A5 82 1E */	rlwinm r5, r5, 0x10, 8, 0xf
/* 803C5BE8  88 63 02 B6 */	lbz r3, 0x2b6(r3)
/* 803C5BEC  50 E5 C0 0E */	rlwimi r5, r7, 0x18, 0, 7
/* 803C5BF0  50 65 44 2E */	rlwimi r5, r3, 8, 0x10, 0x17
/* 803C5BF4  60 A3 00 FF */	ori r3, r5, 0xff
/* 803C5BF8  90 68 00 04 */	stw r3, 4(r8)
/* 803C5BFC  80 A4 02 D0 */	lwz r5, 0x2d0(r4)
/* 803C5C00  38 65 00 08 */	addi r3, r5, 8
/* 803C5C04  90 64 02 D0 */	stw r3, 0x2d0(r4)
/* 803C5C08  90 C5 00 00 */	stw r6, 0(r5)
/* 803C5C0C  90 05 00 04 */	stw r0, 4(r5)
/* 803C5C10  4E 80 00 20 */	blr 
