```mermaid
graph TD
    %% Define Node Styles
    classDef tnh_core fill:#cce5ff,stroke:#004085,stroke-width:2px,rx:10,ry:10,color:black,font-weight:bold;
    classDef tnh_data fill:#d4edda,stroke:#155724,stroke-width:2px,rx:10,ry:10,color:black,font-weight:bold;
    classDef tnh_network fill:#fff3cd,stroke:#856404,stroke-width:2px,rx:10,ry:10,color:black,font-weight:bold;
    classDef tnh_directive fill:#f8d7da,stroke:#721c24,stroke-width:2px,rx:10,ry:10,color:black,font-weight:bold;

    %% Data Flow Root
    Root[TNH System Flow v8.3]:::tnh_core --> Directive;

    %% Directive Processing Branch
    subgraph คำสั่งประมวลผล
    Directive(TNH\_Master\_Directive\_PhraiThong\_NamIng\_V83):::tnh_directive;
    ParsedDirective[สถานะ: สำเร็จ / ผ่านการตีความ]:::tnh_data;
    StoredDirective[สถานะ: จัดเก็บแล้ว]:::tnh_data;

    Directive --> ParsedDirective;
    ParsedDirective --> StoredDirective;
    StoredDirective --> NetworkAnalyticsCore;
    end

    %% Network Analytics Core Branch
    subgraph แกนวิเคราะห์เครือข่าย L4
    NetworkAnalyticsCore(L4 ไพรทอง - แกนวิเคราะห์เครือข่าย GitHub):::tnh_core;
    AuditResult[ผลการตรวจสอบ]:::tnh_data;

    NetworkAnalyticsCore --> AuditResult;

        %% Audit Result Breakdown
        subgraph รายละเอียดการตรวจสอบ
        Account(บัญชี: ผู้ดูแลระบบ ARTHITSIANGWAN):::tnh_core;
        ActiveRepos(คลังข้อมูลที่เปิดใช้งาน: 23):::tnh_core;
        NetworkConnections(การเชื่อมต่อเครือข่าย: ติดตาม 27 บัญชี):::tnh_network;
        CoreTech(เน้นเทคโนโลยีหลัก: Pure Go, Zero-Garbage AI):::tnh_core;
        AccuracyTarget(เป้าหมายความแม่นยำของระบบ: 98.50%):::tnh_core;
        LoopingRate(อัตราการทำงานซ้ำ: 0.00% ถูกกำจัด):::tnh_core;

        AuditResult --> Account;
        AuditResult --> ActiveRepos;
        AuditResult --> NetworkConnections;
        AuditResult --> CoreTech;
        AuditResult --> AccuracyTarget;
        AuditResult --> LoopingRate;
        end

    NetworkConnections --> ConnectionsGeographic;

        %% Network Geography Breakdown
        subgraph ขอบเขตภูมิศาสตร์
        ConnectionsGeographic(ขอบเขตภูมิศาสตร์การเชื่อมต่อ):::tnh_network;
        Europe(ยุโรป);
        MiddleEast(ตะวันออกกลาง);
        Asia(เอเชีย);
        Americas(อเมริกา);

        ConnectionsGeographic --> Europe;
        ConnectionsGeographic --> MiddleEast;
        ConnectionsGeographic --> Asia;
        ConnectionsGeographic --> Americas;
        end
    end

    %% Storage Archival Branch
    subgraph การเก็บถาวรข้อมูล
    ArchivedTo(เก็บถาวรที่):::tnh_data;
    R2Storage(ระบบเก็บข้อมูล R2):::tnh_data;
    Verified(ยืนยันแล้ว 100%):::tnh_data;

    AuditResult --> ArchivedTo;
    ArchivedTo --> R2Storage;
    R2Storage --> Verified;
    end
```

